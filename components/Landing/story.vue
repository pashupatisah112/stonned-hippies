<template>
    <div id="story" style="padding-top:100px;">
        <v-card flat color="background"
            style="border-radius: 0 !important; background: linear-gradient(180deg, #64671A 30.6%, #608A5A 94.77%);">
            <v-container class="px-8 px-md-3 py-16">
                <!-- <v-row>
                    <v-col cols="12" sm="6">
                        <v-row>
                            <p class="text-h4">
                                <span style="border-bottom:2px solid;">Our </span><span
                                    style="color:#FFDD38;">Story</span> 
                                Who are the Stoned Hippies ?
                            </p>
                        </v-row>
                        <v-row>
                            <p class="para-text">
                                The story is of a history that is repeating itself. This story is of a secret realm
                                known as the STONED HIPPIES REALM.

                                SHR is a community blissfully stretched to 2222 members who are ready to roll out
                                comfort, peace, and positivity to the ecosystem that needs this energy the most.

                                These 2222 Stoned Hippies are counter-cultural rebels who have rejected the
                                institutionalized religion, authority and conformity in favor of personal growth, peace,
                                love and happiness. They reflect the present us, our lifestyle that values free love,
                                recreation, music, communal living and self-sufficiency.
                                What unfolds with the Stoned Hippies Realm is a mystery but one thing I know for sure is
                                once you are a part of the community, you are surrounded in togetherness;
                            </p>
                        </v-row>
                    </v-col>
                    <v-col cols="2" sm="2">
                        <v-spacer></v-spacer>
                    </v-col>
                    <v-col cols="8" sm="4">
                        <v-img class="image-shadow image-size" max-width="300"
                            :src="require('~/assets/images/story-2.png')">
                        </v-img>
                    </v-col>
                </v-row> -->
                <v-row class="mb-6" no-gutter>
                    <p class="title-hippies text-h4 pb-1">
                        Who are the Stoned Hippies ?
                    </p>
                </v-row>
                <v-row>
                    <p class="para-text">The story is of a history that is repeating itself. This story is of a
                        secret realm known as
                        the STONED HIPPIES REALM.

                        SHR is a community blissfully stretched to 2222 members who are ready to roll out comfort,
                        peace, and positivity to the ecosystem that needs this energy the most.

                        These 2222 Stoned Hippies are counter-cultural rebels who have rejected the
                        institutionalized religion, authority and conformity in favor of personal growth, peace,
                        love and happiness. They reflect the present us, our lifestyle that values free love,
                        recreation, music, communal living and self-sufficiency.
                        What unfolds with the Stoned Hippies Realm is a mystery but one thing I know for sure is
                        once you are a part of the community, you are surrounded in togetherness;</p>
                    <p class="para-text">in high and in your low.
                        You will love, you will puff,
                        You will find peace
                        hidden in tiny magic sweet,
                        You will fall, you will grow
                        With positivity that overflow
                        As a Stoned hippie, we will be one of a kind generation, bred in at least modest comfort,
                        housed anywhere as a nomad, fueled up in best music, sufficing and if not, creating
                        sufficient.
                        To Peace, Puff and Positivity.</p>
                </v-row>
                <v-row class="py-15">
                </v-row>
                <div class="pt-12">
                    <!-- <v-row justify="center" class="mb-4" no-gutter>
                    </v-row> -->
                    <v-row justify="center">
                        <v-col cols="12" align="center">
                            <p class="text-h4 text-center">Meet and Greet our 22 Stoned Hippies</p>
                        </v-col>
                        <v-col cols="12 mt-n8" align="center">
                            <client-only>
                                <VueSlickCarousel v-bind="slickSetting">
                                    <div v-for="(item, i) in nfts" :key="i">
                                        <GalleryStoryCard :galleryId="item.id" :title="item.gallery_name"
                                            :image="item.image" :text=item.text />
                                    </div>
                                </VueSlickCarousel>
                            </client-only>
                        </v-col>
                        <v-col cols="12 mt-n8" align="center">
                            <ReusableBorderButton @click="$router.push('/stories')" ButtonText="View all" />
                        </v-col>
                    </v-row>
                </div>
            </v-container>
            <v-container class="px-8 px-md-3 py-16">
                <v-row justify="center" class="mt-4">
                    <p class="text-uppercase text-h4">Meet Our Team</p>
                </v-row>
                <v-row class="justify-center justify-sm-space-around justify-md-space-between  mb-6">
                    <v-col cols="12" align="center">
                        <VueSlickCarousel v-bind="slickSetting2">
                            <div v-for="(team, j) in teams" :key="j">
                                <v-card color="transparent" class=" mx-3 mt-3 mb-6" flat max-width="250">
                                    <div class="team-card rounded-t-xl px-10 pt-10 pb-6 text-center">
                                        <v-img :src="team.image" :lazy-src="team.image" class="rounded-circle"
                                            width="160" height="160"
                                            style="border: 3px solid #66854C; box-shadow: 0px 4px 4px rgba(0, 0, 0, 0.25);">
                                            <template v-slot:placeholder>
                                                <v-row class="fill-height ma-0" align="center" justify="center">
                                                    <v-progress-circular indeterminate color="grey lighten-5">
                                                    </v-progress-circular>
                                                </v-row>
                                            </template>
                                        </v-img>
                                    </div>
                                    <div class="team-text rounded-b-xl">
                                        <v-card-subtitle class="pa-4 pb-0" style="font-weight:bold;">{{team.title}}
                                        </v-card-subtitle>
                                        <v-card-text class="pb-8">{{team.text}}</v-card-text>
                                    </div>
                                </v-card>
                            </div>
                        </VueSlickCarousel>
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
                slidesToShow: 3,
                slidesToScroll: 1,
                arrows: true,
                rows: 1,
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
            slickSetting2: {
                dots: true,
                infinite: true,
                speed: 500,
                slidesToShow: 4,
                slidesToScroll: 1,
                arrows: true,
                rows: 1,
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
            nfts: [
                {
                    id: '1',
                    gallery_name: 'Fernley',
                    image: require('~/assets/images/nfts/Fernley.png'),
                    text: ''
                    // text: 'I am Fernly. I like to hike when I am high. And by hiking, I don’t mean plain walking. I have to climb up and descend down and be in the woods.'
                },
                {
                    id: '2',
                    gallery_name: 'Jadeend',
                    image: require('~/assets/images/nfts/Jadeend.png'),
                    text: ''
                    // text: 'I have drinks stocked at home, in the shoe cabinet, under the bed, inside the junkbin, in my bag, pocket, everywhere literally. Despite that, I still have to go out and drink. The walls in my room confine me.'
                },
                {
                    id: '3',
                    gallery_name: 'Pearsyd',
                    image: require('~/assets/images/nfts/Pearsyd.png'),
                    text: ''
                    // text: ' I come with a warning! “Do not come near me” It is because my entire body especially my hair reeks of cheap alcohol and grass. but let me also tell you that these are not cheap alcohol that you smell off me.'
                }
            ],
            teams: [
                {
                    id: '1',
                    title: 'SolandPepper',
                    image: require('~/assets/images/Donga.png'),
                    text: 'Co-Founder and Community head'
                },
                {
                    id: '2',
                    title: 'Youngflameartist',
                    image: require('~/assets/images/Youngflame.png'),
                    text: 'Lead Artist'
                },
                {
                    id: '3',
                    title: 'Apeol Dan Arvic',
                    image: require('~/assets/images/Apeoldarnavic.png'),
                    text: 'Growth and Partnerships'
                },
                {
                    id: '4',
                    title: '0xmachina',
                    image: require('~/assets/images/0xmachina.png'),
                    text: 'Community and Marketing'
                }
            ]
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
.title-box {
    border-left: 3px solid white;
    margin: 10px 0px;
    padding: 10px;
}

.title-hippies {
    position: relative;
}

.title-hippies:before {
    content: "";
    position: absolute;
    left: 0;
    bottom: 0;
    width: 50%;
    border-bottom: 3px solid #fff;
}

.team-card {
    background: linear-gradient(181.37deg, #BCB9A7 1.17%, #BEBF89 69.72%);
}

.team-text {
    background: #fff;
    color: #000;
    text-align: center;
}
</style>
