<?php

namespace App\Http\Controllers;

use App\Models\Friend;
use App\Models\User;
use Illuminate\Http\Request;
use App\Models\ChatMessage;
use App\Models\ChatRoom;
use Illuminate\Support\Facades\Auth;
use App\Events\NewChatMessage;

class ChatController extends Controller
{
    public function rooms()
    {
         return Friend::where('user_id', Auth::id())->with('room')->orderBy('created_at', "DESC")->get();
//        return ChatRoom::all();
    }

    public function messages($roomId)
    {
        return ChatMessage::where('chat_room_id', $roomId)->with('user')->orderBy('created_at', "DESC")->get();
    }

    public function newMessage(Request $request, $roomId)
    {
        $newMessage = new ChatMessage([
            'user_id' => Auth::id(),
            'chat_room_id' => $roomId,
            'message' => $request->message
        ]);
        $newMessage->save();

        broadcast(new NewChatMessage($newMessage))->toOthers();

        return $newMessage;
    }

    public function allPeople()
    {
        $user = Auth::id();
        $people = User::where('id', '!=', Auth::id())->with('myfriends')->orderBy('id', 'desc')->get();
        $data = array(
            'user' => $user,
            'people' => $people
        );
        echo json_encode($data);
    }

    public function allFriends()
    {
        return User::where('id', Auth::id())->with('myfriends')->orderBy('id', 'desc')->first();
    }

    public function addFriend($id)
    {
        $friendName = User::find($id);

        $friendsRoom = new ChatRoom([
            'name' => Auth::user()->name . ' - ' . $friendName->name
        ]);
        $friendsRoom->save();

        $friend = new Friend([
            'user_id' => Auth::id(),
            'friend_id' => $id,
            'room_id' => $friendsRoom->id
        ]);
        $friend->save();

        $friend2 = new Friend([
            'user_id' => $id,
            'friend_id' => Auth::id(),
            'room_id' => $friendsRoom->id
        ]);
        $friend2->save();

        return $friendName;
    }

    public function removeFriend($id)
    {
        $room = Friend::where('user_id', Auth::id())->where('friend_id', $id)->first();
        ChatRoom::where('id', $room->room_id)->delete();
        Friend::where('user_id', Auth::id())->where('friend_id', $id)->delete();
        Friend::where('user_id', $id)->where('friend_id', Auth::id())->delete();
        ChatMessage::where('chat_room_id', $room->room_id)->delete();
        $friend = User::find($id);

        return $friend;
    }

    public function search(Request $request)
    {


        $data = array(
            'user' => $user,
            'people' => $people
        );
        echo json_encode($data);
    }
}
