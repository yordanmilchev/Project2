<template>
    <app-layout title="Vacation">
        <div class="grid justify-center max-w-7xl mx-auto sm:px-6 lg:px-8">
                <img src="/vacation.png"/>
        </div>
    </app-layout>
</template>

<script>
import AppLayout from '@/Layouts/AppLayout.vue'
import Welcome from '@/Jetstream/Welcome.vue'

export default {
    components: {
        AppLayout,
        Welcome,
    },
}
</script>
