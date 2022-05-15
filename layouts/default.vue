<template>
<v-app dark style="background: #05061C;">
    <LayoutAppbar />
    <client-only>
        <v-main>
            <Nuxt />
        </v-main>
    </client-only>
    <LayoutFooter />
</v-app>
</template>

<style>
@import url('~/assets/style/main.css');
</style>
