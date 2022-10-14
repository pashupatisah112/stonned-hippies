<!-- <template>
    <div id="roadmap">
        <v-card :height="getHeight()" flat color="transparent">

            <v-container class="pa-16">
                <v-row justify="center">
                    <p class="text-h4">ROAD MAP</p>
                </v-row>
                <v-row justify="center">
                    <v-col cols="12" lg="7">
                        <v-timeline>
                            <v-timeline-item v-for="(item, i) in roadmap" :key="i" class="my-16" small>
                                <template v-slot:opposite>
                                    <div v-for="(des,j) in item.events" :key="j" class="caption ">
                                        <v-icon color="green" small class="mr-2">mdi-check-circle</v-icon>{{des.title}}
                                    </div>
                                </template>
                                <span v-text="item.date" class="text-right"></span>

                            </v-timeline-item>
                        </v-timeline>

                    </v-col>
                    <v-col cols="12" lg="4" align="center">
                        <v-img :src="require('~/assets/images/Roadmap.png')" class="mt-16" max-width="300"></v-img>
                    </v-col>
                </v-row>
            </v-container>
        </v-card>
    </div>
</template>

<script>
export default {
    data() {
        return {
            roadmap: [

                {
                    date: 'June 2022',
                    events: [
                        { title: 'Community Platform Launch' },
                        { title: 'Reveal the Chronicle-Tale of the go-to-tea house "Sigis of Kabul"' },
                        { title: 'Recommence the Hippiedom Legacy' },
                        { title: 'First NFT Sneak peeks' },
                        { title: 'Launch Pilot AMA Campaigns' }
                    ]
                },
                {
                    date: 'July 2022',
                    events: [
                        { title: 'Resurrect 2222 Stoned Hippies Gen-0 NFTs colllection' },
                        { title: 'Official Mint date Announcement' },
                        { title: 'Publish the Whitepaper' },
                        { title: 'Post Mint Activities Announcement' }
                    ]
                }
            ],
        }
    },
    // methods: {
    //     getHeight() {
    //         return window.innerHeight
    //     }
    // }
}
</script>

<style>
.v-timeline-item__inner-dot {
    background-color: white !important;
}

.theme--dark.v-timeline::before {
    background: linear-gradient(264.75deg, #FE87FF 3.04%, #1905DA 99.63%);
}

.theme--dark.v-timeline .v-timeline-item__dot {
    background: transparent;
}

.v-application .primary {
    background-color: white !important;
}
</style> -->
