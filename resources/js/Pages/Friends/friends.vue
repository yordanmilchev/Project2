<template>
    <app-layout title="Friends">
        <template #header>
            <h2 class="font-semibold text-xl text-gray-800 leading-tight">
                Friends
            </h2>
        </template>

        <div class="py-12">
            <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
                <div class="relative h-10 m-1">
                    <div style="border-bottom: 1px solid #e6e6e6;" class="grid grid-cols-6">
                        <input
                            type="text"
                            v-model="searchFriend"
                            placeholder="Search Friends"
                            class="col-span-6 outline-none p-1"/>
                    </div>
                </div>
                <div class="bg-white overflow-hidden shadow-xl sm:rounded-lg">
                    <friends-container :friends="filteredFriends"/>
                </div>
            </div>
        </div>
    </app-layout>
</template>

<script>
import AppLayout from '@/Layouts/AppLayout.vue'

import FriendsContainer from "@/Pages/Friends/friendsContainer";

export default {
    components: {
        FriendsContainer,
        AppLayout
    },
    data: function () {
        return {
            friends: [],
            searchFriend: ''
        }
    },
    methods: {
        getFriends() {
            axios.get('/allfriends')
                .then(response => {
                    this.friends = response.data.myfriends;
                })
                .catch(error => {
                    console.log(error);
                })
        }
    },
    created() {
        this.getFriends();
    },
    computed:{
        filteredFriends: function (){
            return this.friends.filter((friend) => {
                return friend.name.toLowerCase().match(this.searchFriend.toLowerCase());
            });
        }
    }
}
</script>
