<template>
    <div>
        <v-btn large :class="{'title': $vuetify.breakpoint. smAndDown, ' headline ': $vuetify.breakpoint. mdAndUp}"
            class="btn-mint rounded-xl" @click="$emit('click')">{{ButtonText}}</v-btn>
    </div>
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

<style lang="css">
.btn-mint {
    background: linear-gradient(90deg, #C8AC27 0%, rgba(129, 141, 29, 0.75) 100%);

}
</style>