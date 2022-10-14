<template>
    <v-btn class="btn-view rounded-lg" @click="$emit('click')">
        {{ButtonText}}
    </v-btn>
</template>

<script>
export default {
    props: {
        ButtonText: {
            type: String
        }
    }
}
</script>

<style scoped>
.btn-view {
    border: 1px solid #fff;
    background: transparent !important;
    box-shadow: none;
}
</style>