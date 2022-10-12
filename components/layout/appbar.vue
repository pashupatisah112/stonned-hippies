<template>
    <div>
        <v-app-bar :class="header()" color="transparent" flat fixed>
            <v-container class="px-1 d-flex align-center">
                <!-- <div class="logo">
                    <v-img @click="$store.commit('utility/changeRoute','/')" :src="require('~/assets/images/logo.png')"
                        style="max-width:60px; cursor: pointer;"></v-img>
                </div> -->
                <v-spacer></v-spacer>
                <div class="hidden-sm-and-down d-none d-lg-flex">
                    <v-btn text @click="$store.commit('utility/changeRoute','/')">
                        Home
                    </v-btn>
                    <!-- <v-menu open-on-hover bottom offset-y>
                        <template v-slot:activator="{on, attrs}">
                            <v-btn v-bing="attrs" v-on="on" text
                                @click="$store.commit('utility/changeRoute','/story#story')">
                                Our Story
                            </v-btn>
                        </template>
                        <v-btn text @click="$store.commit('utility/changeRoute','/stories')" style="width:100%;">Stories
                        </v-btn>
                    </v-menu> -->
                    <!-- <v-btn text @click="goTo('#collection')">
                    Collection
                    </v-btn> -->
                    <v-btn text @click="$store.commit('utility/changeRoute','/story#story')">
                        Our Story
                    </v-btn>
                    <v-btn text @click="$router.push('/story#roadMap')">
                        Roadmap
                    </v-btn>

                    <v-btn text @click="$store.commit('utility/changeRoute','/shippieExpediation')">
                        Shippie Expedition
                    </v-btn>
                    <!-- <ReusableGradientButton class="ml-3" ButtonText="Connect Wallet" /> -->
                    <div class="d-flex align-center px-3">
                        <v-icon small @click="
                          openLink(
                            'https://twitter.com/StonedHippies?t=EvLv7lx-XqFOU4agae2WAA&s=09'
                          )
                        ">mdi-twitter</v-icon>
                        <v-img :src="require('assets/images/discord.png')" class="mx-2"
                            @click="openLink('https://discord.gg/FNqSVmzEw3')" max-width="18" height="18"
                            style="cursor: pointer;"></v-img>
                        <v-img :src="require('assets/images/medium.png')"
                            @click="openLink('https://medium.com/stoned-hippies')" max-width="20"
                            style="cursor: pointer;"></v-img>
                    </div>
                </div>
                <v-app-bar-nav-icon @click.stop="drawer = !drawer" class="hidden-lg-and-up"></v-app-bar-nav-icon>
            </v-container>
        </v-app-bar>
        <v-navigation-drawer v-model="drawer" app fixed temporary dark color="#827c13">
            <v-list nav dense>
                <v-list-item v-for="(item,i) in items" :key="i" @click="$store.commit('utility/changeRoute',item.link)">
                    <v-list-item-title>
                        {{item.title}}
                    </v-list-item-title>
                </v-list-item>
                <div class="d-flex align-center px-3">
                    <v-icon small @click="
                      openLink(
                        'https://twitter.com/StonedHippies?t=EvLv7lx-XqFOU4agae2WAA&s=09'
                      )
                    ">mdi-twitter</v-icon>
                    <v-img :src="require('assets/images/discord.png')" class="mx-2"
                        @click="openLink('https://discord.gg/FNqSVmzEw3')" max-width="18" height="18"
                        style="cursor: pointer;"></v-img>
                    <v-img :src="require('assets/images/medium.png')"
                        @click="openLink('https://medium.com/stoned-hippies')" max-width="20" style="cursor: pointer;">
                    </v-img>
                </div>
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
                link: '/story#story'
            },
            // {
            //     title: 'Collection',
            //     link: '#collection'
            // },
            {
                title: 'Roadmap',
                link: '/story#roadMap'
            },
            {
                title: 'Shippie Expedition',
                link: '/ShippieExpediation'
            }
            ]
        }
    },
    methods: {
        header() {
            // console.log(this.$route)
            if (this.$route.name == 'index') {
                return 'header';
            }
            else {
                return 'header2';
            }
        }
    }
}
</script>

<style lang="css">
.header {
    /* background: linear-gradient(180deg, #AA5E27 0%, #5C5F1A 100%); */
    /* height: 100px !important; */
    position: absolute !important;
    top: 0;
    right: 0;
    left: 10;
    /* z-index: 10; */
}

.header2 {
    background: linear-gradient(180deg, #AA5E27 0%, #5C5F1A 100%);
    height: 100px !important;
}

.header2 .v-toolbar__content {
    height: auto !important;
    margin-top: 12px;
}
</style>