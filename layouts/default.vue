<template>
    <v-app dark style="position: relative; overflow: hidden; ">
        <client-only>
            <LayoutAppbar />
            <v-main>
                <Nuxt />
            </v-main>
        </client-only>
    </v-app>
</template>
<script>
export default {

}
</script>
<style>
@import url('~/assets/style/main.css');
</style>
