<template>
    <div>
        <v-app-bar class="header" color="transparent" flat absolute>
            <v-container class="px-1 d-flex align-center">
                <div class="logo">
                    <v-img @click="$store.commit('utility/changeRoute','/')" :src="require('~/assets/images/logo.png')"
                        style="max-width:60px; cursor: pointer;"></v-img>
                </div>
                <v-spacer></v-spacer>
                <div class="hidden-md-and-down">
                    <v-btn text @click="$store.commit('utility/changeRoute','/')">
                        Home
                    </v-btn>
                    <v-menu open-on-hover bottom offset-y>
                        <template v-slot:activator="{on, attrs}">
                            <v-btn v-bing="attrs" v-on="on" text @click="$store.commit('utility/changeRoute','/story')">
                                Our Story
                            </v-btn>
                        </template>
                        <v-btn text @click="$store.commit('utility/changeRoute','/stories')" style="width:100%;">Stories
                        </v-btn>
                    </v-menu>
                    <!-- <v-btn text @click="goTo('#collection')">
                Collection
            </v-btn> -->
                    <!-- <v-btn text @click="$store.commit('utility/changeRoute','/roadmap')">
                        Roadmap
                    </v-btn> -->
                    <v-btn text @click="scrollTo">
                        Roadmap
                    </v-btn>

                    <v-btn text @click="$store.commit('utility/changeRoute','/shippieExpediation')">
                        Shippie Expediation
                    </v-btn>
                    <ReusableGradientButton class="ml-3" ButtonText="Connect Wallet" />
                </div>
                <v-app-bar-nav-icon @click.stop="drawer = !drawer" class="hidden-lg-and-up"></v-app-bar-nav-icon>
            </v-container>
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
    methods: {
        scrollTo() {
            document.getElementById("roadMap").scrollIntoView()
        }
    }
}
</script>

<style lang="css">
.header {
    background: linear-gradient(180deg, #AA5E27 0%, #5C5F1A 100%);
    height: 100px !important;
}

.header .v-toolbar__content {
    height: auto !important;
    margin-top: 12px;
}
</style>