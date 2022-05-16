<template>
<v-app dark style="background: #05061C;">
    <client-only>
        <LayoutAppbar />
        <v-main>
            <Nuxt />
        </v-main>
        <LayoutFooter />
    </client-only>
</v-app>
</template>

<style>
@import url('~/assets/style/main.css');
</style>
