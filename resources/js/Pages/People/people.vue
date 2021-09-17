<template>
    <app-layout title="People">
        <template #header>
            <h2 class="font-semibold text-xl text-gray-800 leading-tight">
                People
            </h2>
        </template>


        <div class="py-12">
            <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
                <div class="relative h-10 m-1">
                    <div style="border-bottom: 1px solid #e6e6e6;" class="grid grid-cols-6">
                        <input
                            type="text"
                            v-model="searchPerson"
                            placeholder="Search People"
                            class="col-span-6 outline-none p-1"/>
                    </div>
                </div>
                <div class="bg-white overflow-hidden shadow-xl sm:rounded-lg">
                    <people-container :people="filteredPeople"
                                      :user="user"/>
                </div>
            </div>
        </div>
    </app-layout>
</template>

<script>
import AppLayout from '@/Layouts/AppLayout.vue'
import PeopleContainer from "@/Pages/People/peopleContainer";

export default {
    components: {
        PeopleContainer,
        AppLayout
    },
    data: function () {
        return {
            people: [],
            user: [],
            searchPerson: ''
        }
    },
    methods: {
        getPeople() {
            axios.get('/allpeople')
                .then(response => {
                    this.people = response.data.people;
                    this.user = response.data.user;
                })
                .catch(error => {
                    console.log(error);
                })
        }
    },
    created() {
        this.getPeople();
    },
    computed:{
        filteredPeople: function (){
            return this.people.filter((person) => {
            return person.name.toLowerCase().match(this.searchPerson.toLowerCase());
            });
        }
    }
}
</script>
