<template>
    <div class="h-96 w-full">
        <div class="h-full p-2 flex flex-col overflow-y-auto">
            <table>
                <tr>
                    <th>Name</th>
                    <th>Joined</th>
                    <th>Action</th>
                </tr>
                <tr v-for="(person, index) in people" :key="index">
                    <people-item :person="person"
                                 :user="user"/>
                </tr>
            </table>
        </div>
    </div>
</template>

<script>
import PeopleItem from "@/Pages/People/peopleItem";

export default {
    components: {PeopleItem},
    props: ['people', 'user']
}
</script>
