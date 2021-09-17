<template>
    <div class="h-96 w-full">
        <div class="h-full p-2 flex flex-col overflow-y-auto">
            <table>
                <tr>
                    <th>Name</th>
                    <th>Email</th>
                    <th>Action</th>
                </tr>
                <tr v-for="(friend, index) in friends" :key="index">
                    <friends-item :friend="friend"/>
                </tr>
            </table>
        </div>
    </div>
</template>

<script>
import FriendsItem from "@/Pages/Friends/friendsItem";

export default {
    components: {FriendsItem},
    props: ['friends']
}
</script>
