<template>
<div id="story">
    <v-card :height="getHeight()" flat color="transparent">
        <v-container class="pa-16">
            <v-row>
                <v-col cols="12" lg="6" md="6">
                    <div class="title-box">
                        <p class="text-h4">OUR STORY</p>
                    </div>
                    <p class="text-uppercase para-text">
                        During the late 1960s; the year of the magic bus, there were thousands of counterculture travelers who made their way to Afghanistan. The go-to-teahouse called the Sigis in Kabul was the haven for those who honored music and this is where these seven hippies met and instantly got connected through their love for music.
                    </p>
                    <!-- <p class="text-uppercase para-text">
                    Almost six decades down the line, these last remaining hippies from that era have secretly built a community of stoned hippies rooted in their love for music. Having survived half a century long political wretch, the community has decided to recommence as the hippiedom legacy and to resurrect the solana blockchain with 2222 elusive inhabitants.
                </p>
                <v-btn class="menu-btn">Connect Wallet</v-btn> -->
                </v-col>
                <v-col cols="12" lg="6" md="6" align="center">
                    <v-img :src="require('~/assets/images/Our story.png')" max-width="300"></v-img>
                </v-col>
            </v-row>
        </v-container>
    </v-card>
</div>
</template>
<script>
export default {
    methods:{
        getHeight(){
            return window.innerHeight
        }
    }
}
</script>

<style>
.title-box {
    border-left: 3px solid white;
    margin: 10px 0px;
    padding: 10px;
}
</style>
