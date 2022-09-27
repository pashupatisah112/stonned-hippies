<template>
    <div id="story" class="mt-16">
        <!-- <v-img :src="require('~/assets/images/story.png')" :height="getHeight('adjust')"></v-img> -->
        <!-- <v-card :height="getHeight('fix')" flat color="background">
            <v-container class="pa-lg-16">
                <v-row justify="center">
                    <v-col cols="12" lg="6" md="6">
                        <div class="title-box">
                            <p class="text-h4">OUR STORY</p>
                        </div>
                        <p class="text-uppercase para-text">
                            During the late 1960s; the year of the magic bus, there were thousands of counterculture
                            travelers who made their way to Afghanistan. The go-to-teahouse called the Sigis in Kabul
                            was the haven for those who honored music and this is where these seven hippies met and
                            instantly got connected through their love for music. Having traveled from all parts of the
                            world to Netherlands, France, Switzerland, Italy, into Greece, Turkey and crossed into
                            Afghanistan. While most of the travelers continued onto their hippie trail to explore love
                            and liberation, only these twenty two hippies remained in the same.
                            Almost six decades down the line, these last remaining hippies from that era have secretly
                            built a community of stoned hippies rooted in their love for music. Having survived half a
                            century long political wretch, the community has decided to recommence as the hippiedom
                            legacy and to resurrect the solana blockchain with 2222 elusive inhabitants.
                        </p> -->

        <!-- <p class="text-uppercase para-text">
                    Almost six decades down the line, these last remaining hippies from that era have secretly built a community of stoned hippies rooted in their love for music. Having survived half a century long political wretch, the community has decided to recommence as the hippiedom legacy and to resurrect the solana blockchain with 2222 elusive inhabitants.
                </p>
                <v-btn class="menu-btn">Connect Wallet</v-btn> -->

        <!-- </v-col>
                    <v-col cols="12" lg="6" md="6" align="center">
                        <v-img :src="require('~/assets/images/bob-marley.png')" max-width="300"
                            class="rounded-circle mt-lg-16 mt-md-8"></v-img>
                    </v-col>
                </v-row>
            </v-container>
        </v-card> -->
        <v-card flat color="background"
            style="border-radius: 0 !important; background: linear-gradient(180deg, #64671A 30.6%, #608A5A 94.77%);">
            <v-container class="px-8 px-md-0 py-16">
                <v-row>
                    <v-col cols="12" sm="6">
                        <v-row>
                            <p class="text-h4">
                                <span style="border-bottom:2px solid;">Our </span><span
                                    style="color:#FFDD38;">Story</span>
                            </p>
                        </v-row>
                        <v-row>
                            <p class="para-text">
                                During the late 1960s; the year of the magic bus, there were thousands of
                                ounterculture
                                travellers who made their way to afghanistan. The go-to-teahouse called the sigis in
                                kabul was the haven for those who honored music and this is where the se seven
                                hippies
                                met and instantly got connected through their love for music.
                            </p>
                        </v-row>
                    </v-col>
                    <v-col cols="3" sm="2">
                        <v-spacer></v-spacer>
                    </v-col>
                    <v-col cols="6" sm="4">
                        <v-img class="image-shadow image-size" max-width="300"
                            :src="require('~/assets/images/story-2.png')">
                        </v-img>
                    </v-col>
                </v-row>
                <div class="pt-16">
                    <v-row justify="center">
                        <p class="text-h4">Stories</p>
                    </v-row>
                    <v-row class="justify-space-around mb-8">
                        <div v-for="(item, i) in nfts" :key="i">
                            <GalleryStoryCard :galleryId="item.id" :title="item.gallery_name" :image="item.image" />
                        </div>
                    </v-row>
                    <v-row justify="center">
                        <ReusableBorderButton ButtonText="View all" />
                    </v-row>
                </div>
            </v-container>
        </v-card>
        <v-card flat color="mistyRose" style="margin-bottom:-1px; border-radius: 0 !important; ">
            <v-container class="px-8 px-md-0 py-16" style="color: #000;">
                <v-row>
                    <v-col cols="12" sm="6">
                        <v-row class="mb-6">
                            <p class="title-story text-h4 text-capitalize pb-1" style="width:240px;">
                                Stoned hippies realm(shr)
                            </p>
                        </v-row>
                        <v-row>
                            <p class="para-text">
                                Lorem ipsum dolor sit amet consectetur adipisicing elit. Aliquam quae repudiandae
                                exercitationem quos, tempore illo molestiae dolor, omnis, reprehenderit fugiat
                                delectus voluptates expedita minus porro accusantium quas blanditiis ea voluptatum?
                            </p>
                        </v-row>
                    </v-col>
                    <v-col cols="3" sm="2">
                        <v-spacer></v-spacer>
                    </v-col>
                    <v-col cols="12" sm="4">
                        <v-img class="rounded-lg" max-width="300" :src="require('~/assets/images/2.png')">
                        </v-img>
                    </v-col>
                </v-row>
            </v-container>
        </v-card>
        <v-card flat style="background: linear-gradient(180deg, #608A5A 4.44%, #646719 104.44%);">
            <v-img :src="require('~/assets/images/curvey-background.svg')" style="margin-top:-1px; border-radius: 0;">
            </v-img>
            <v-container class="pa-16">
                <v-row justify="center">
                    <p class="title-roadMap text-h4 pb-1">Road Map</p>
                </v-row>
                <v-row justify="center">
                    <v-col cols="12" lg="7" md="6" align="center">
                        <v-timeline>
                            <v-timeline-item v-for="(item, i) in roadmap" :key="i" class="my-16" small>
                                <template v-slot:opposite>
                                    <div v-for="(des,j) in item.events" :key="j" class="caption ">
                                        <!-- <v-icon color="green" small class="mr-2">mdi-check-circle</v-icon> -->
                                        {{des.title}}
                                    </div>
                                </template>
                                <span v-text="item.date" class="text-right"></span>
                            </v-timeline-item>
                        </v-timeline>

                    </v-col>
                    <v-col cols="12" lg="4" md="6" align="center">
                        <v-img :src="require('~/assets/images/roadmap-2.png')" class="mt-16" max-width="300">
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
            nfts: [
                {
                    id: '1',
                    gallery_name: 'abc',
                    image: require('~/assets/images/2.png'),
                },
                {
                    id: '2',
                    gallery_name: 'abcd',
                    image: require('~/assets/images/3.png'),
                },
                {
                    id: '3',
                    gallery_name: 'abcde',
                    image: require('~/assets/images/1.png'),
                }
            ],
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
            // if (value == 'adjust') {
            //     return window.innerHeight - 60
            // } else {
            //     return window.innerHeight
            // }
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

.title-story {
    position: relative;
}

.title-story:before {
    content: "";
    position: absolute;
    left: 0;
    bottom: 0;
    width: 50%;
    border-bottom: 3px solid #000
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
</style>
