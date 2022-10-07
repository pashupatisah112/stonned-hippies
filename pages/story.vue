<template>
    <div id="story">
        <LandingStory />
        <LandingRealm />
        <!-- <LandingRoadMap /> -->
        <v-card class="pb-8" flat style="background: linear-gradient(180deg, #608A5A 4.44%, #646719 104.44%);">
            <v-img :src="require('~/assets/images/Curve.png')" style="margin-top:-1px; border-radius: 0;">
            </v-img>
            <v-container id="roadMap" class="pa-6 pa-sm-16">
                <v-row justify="center">
                    <p class="title-roadMap text-h4 pb-1">Road Map</p>
                </v-row>
                <v-row justify="space-between">
                    <v-col cols="12" md="9" lg="7" align="center">
                        <v-timeline class="d-block d-sm-none">
                            <v-timeline-item v-for="(item, i) in roadmap" :key="i" class="my-16" small>
                                <template v-slot:opposite>
                                    <div v-for="(des,j) in item.events" :key="j" class="caption ">
                                        <v-icon color="green" small class="mr-2">mdi-check-circle</v-icon>
                                        {{des.title}}
                                    </div>
                                </template>
                                <span v-text="item.date" class="text-right"></span>
                            </v-timeline-item>
                        </v-timeline>
                        <RoadmapTimeLine class="d-none d-sm-block" />
                    </v-col>
                    <v-col cols="12" md="3" lg="5" align="center">
                        <v-img :src="require('~/assets/images/legendary-2-1.png')" max-width="300">
                        </v-img>
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
            slickSetting: {
                dots: true,
                infinite: true,
                speed: 500,
                slidesToShow: 4,
                slidesToScroll: 1,
                arrows: true,
                rows: 3,
                responsive: [
                    {
                        breakpoint: 1264,
                        settings: {
                            slidesToShow: 3,
                            slidesToScroll: 3,
                            infinite: true,
                            dots: false,
                            arrows: true,
                        },
                    },
                    {
                        breakpoint: 960,
                        settings: {
                            slidesToShow: 2,
                            slidesToScroll: 2,
                            initialSlide: 2,
                            arrows: true,
                        },
                    },
                    {
                        breakpoint: 600,
                        settings: {
                            slidesToShow: 1,
                            slidesToScroll: 1,
                            arrows: true,
                        },
                    },
                ],
            },

            roadmap: [

                {
                    date: 'January - March 2022',
                    events: [{
                        title: 'Preparation, Assemble the Team, Investor Pitch Deck and Secure Seed funding'
                    },
                        // {title: 'Reveal the Chronicle-Tale of the go-to-tea house "Sigis of Kabul"'},
                        // {title: 'Recommence the Hippiedom Legacy'},
                        // {title: 'First NFT Sneak peeks'},
                        // {title: 'Launch Pilot AMA Campaigns'}
                    ]
                },
                {
                    date: 'April - June 2022',
                    events: [{
                        title: 'Community Platform Launch, Reveal of the Chronicle - Tale of the go-to-tea house "Sigis of Kabul", First NFT sneak peeks and AMA Campaigns'
                    },
                        // {title: 'Official Mint date Announcement'},
                        // {title: 'Publish the Whitepaper'},
                        // {title: 'Post Mint Activities Announcement'}
                    ]
                },
                {
                    date: 'July - September 2022',
                    events: [{
                        title: 'Publish Whitepaper, Strategic Partnership and Collaboration, Official Mint date Announcement, Showcase 2222 Stoned Hippies Gen-0 NFTs collection, Stoned Hippies DAO Setup'
                    },
                        // {title: 'Official Mint date Announcement'},
                        // {title: 'Publish the Whitepaper'},
                        // {title: 'Post Mint Activities Announcement'}
                    ]
                },
                {
                    date: 'October - December 2022',
                    events: [{
                        title: 'Mint and Secondary Market Listing, Tokenomics and Utilities, Stake to earn $SHR, Xmas Metaverse Launch Party'
                    },]
                }
            ],

        }
    },
    methods: {
        getHeight(value) {
            if (value == 'adjust') {
                return window.innerHeight - 60
            } else {
                return window.innerHeight
            }
        }
    }
}
</script>

<style>
.image-shadow .v-image__image {
    -moz-box-shadow: 0px 6px 5px #51612E;
    -webkit-box-shadow: 0px 6px 5px #51612E;
    box-shadow: 0px 8px 5px #51612E;
    -moz-border-radius: 190px;
    -webkit-border-radius: 190px;
}

.image-size .v-image__image {
    height: 91%;
    width: 91%;
    /* margin: 16px; */
    /* margin: (91% - 112px); */
}

.image-border .v-image__image {
    border-radius: 8px;
}


.title-roadMap {
    position: relative;
}

.title-roadMap::before {
    content: "";
    position: absolute;
    left: 0;
    right: 0;
    bottom: 0;
    width: 50%;
    margin: 0 auto;
    border-bottom: 2px solid #fff;
}

.caption .v-icon {
    display: none;
}

.theme--dark.v-timeline .v-timeline-item__dot {
    background: #0B1A50 !important;
}

.v-application .primary {
    background-color: #500B28 !important;
}
</style>
