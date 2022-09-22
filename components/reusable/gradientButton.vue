<template>
    <v-btn class="btn-wallet rounded-xl" @click="$emit('click')">{{ButtonText}}</v-btn>
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
.btn-wallet {
    background: linear-gradient(264.75deg,
            #B59925 3.04%,
            #AD9824 23.86%,
            #A49622 41.34%,
            #989421 68.89%,
            #838E1D 99.63%);
}
</style>