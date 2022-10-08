<template>
    <div>
        <v-btn class="btn-mint rounded-xl" @click="$emit('click')">{{ButtonText}}</v-btn>
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
    min-height: 50px;
    width: 160px;
    /* border: 2px solid #fff; */
    /* background: linear-gradient(180deg, rgba(154, 149, 149, 0.53) 0%, #9A9595 100%); */
    background: linear-gradient(90deg, #C8AC27 0%, rgba(129, 141, 29, 0.75) 100%);

}

.btn-mint .v-btn__content {
    font-size: 24px !important;
}
</style>