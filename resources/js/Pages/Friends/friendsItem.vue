<template>
    <th>{{ friend.name }}</th>
    <th>{{ friend.email }}</th>
    <th>status</th>
</template>

<script>
export default {
    props: ['friend']
}
</script>
