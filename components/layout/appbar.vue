<template>
<div>
    <v-app-bar color="transparent" flat absolute>
        <v-spacer></v-spacer>
        <div class="hidden-md-and-down">
            <v-btn text @click="$store.commit('utility/changeRoute','/')">
                Home
            </v-btn>
            <v-btn text @click="$store.commit('utility/changeRoute','/story')">
                Our Story
            </v-btn>
            <!-- <v-btn text @click="goTo('#collection')">
                Collection
            </v-btn> -->
            <v-btn text @click="$store.commit('utility/changeRoute','/roadmap')">
                Roadmap
            </v-btn>
        </div>

        <v-app-bar-nav-icon @click.stop="drawer = !drawer" class="hidden-lg-and-up"></v-app-bar-nav-icon>
    </v-app-bar>
    <v-navigation-drawer v-model="drawer" app absolute temporary dark color="#827c13">
        <v-list nav dense>
            <v-list-item v-for="(item,i) in items" :key="i" @click="$store.commit('utility/changeRoute',item.link)">
                <v-list-item-title>
                    {{item.title}}
                </v-list-item-title>
            </v-list-item>
        </v-list>

    </v-navigation-drawer>
</div>
</template>

<script>
export default {
    data() {
        return {
            drawer: false,
            options: {
                duration: 300,
                offset: 0,
                easing: 'easeInOutCubic'

            },
            items: [{
                    title: 'Home',
                    link: '/'
                },
                {
                    title: 'Our Story',
                    link: '/story'
                },
                // {
                //     title: 'Collection',
                //     link: '#collection'
                // },
                {
                    title: 'Roadmap',
                    link: '/roadmap'
                },
            ]
        }
    },
}
</script>
