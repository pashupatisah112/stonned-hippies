<template>
    <div>
        <v-app-bar app color="transparent" flat absolute>
            <v-btn text>
                Home
            </v-btn>
            <v-btn text @click="$vuetify.goTo('#story', options)">
                Our Story
            </v-btn>
            <v-btn text @click="$vuetify.goTo('#collection', options)">
                Collection
            </v-btn>
            <v-btn text @click="$vuetify.goTo('#roadmap', options)">
                Roadmap
            </v-btn>
        </v-app-bar>
    </div>
</template>
<script>
export default {
    data(){
        return{
            options: {
                duration: 300,
                offset: 0,
                easing: 'easeInOutCubic'

            },
        }
    }
}
</script>
<style>
   
</style>