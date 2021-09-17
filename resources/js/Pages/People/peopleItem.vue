<template>
    <th>{{ person.name }}</th>
    <th>{{ moment(person.created_at).fromNow() }}</th>
    <th>
        <button
            v-if="isFriend"
            @click="removef()"
            class="inline-flex justify-center
     rounded-md border border-transparent px-4 py-2 bg-red-600 text-base
      leading-6 font-medium text-white shadow-sm hover:bg-red-500 focus:outline-none
       focus:border-green-700 focus:shadow-outline-green transition ease-in-out
        duration-150 sm:text-sm sm:leading-5">Remove
        </button>
        <button
            v-else
            @click="addf()"
            class="inline-flex justify-center
     rounded-md border border-transparent px-4 py-2 bg-green-600 text-base
      leading-6 font-medium text-white shadow-sm hover:bg-green-500 focus:outline-none
       focus:border-green-700 focus:shadow-outline-green transition ease-in-out
        duration-150 sm:text-sm sm:leading-5">Add friend
        </button>
    </th>
</template>

<script>
var moment = require('moment');

export default {
    props: ['person', 'user'],
    data: function () {
        return {
            moment: moment,
            isFriend: []
        }
    },
    methods: {
        addf() {
            axios.post('/addf/' + this.person.id);
            this.$snackbar.add({
                type: 'success',
                text: this.person.name + ' added as friend.'
            })
            this.isFriend = !this.isFriend;
        },

        removef() {
            axios.post('/removef/' + this.person.id);
            this.$snackbar.add({
                type: 'error',
                text: this.person.name + ' removed from friends.'
            })
            this.isFriend = !this.isFriend;
        },

        friendOrNot() {
            this.isFriend = false;
            this.person.myfriends.forEach(i => {
                if (i.id == this.user) {
                    this.isFriend = true;
                }
            })
        }
    },
    created() {
        this.friendOrNot();
    }
}
</script>
