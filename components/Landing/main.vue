<template>
<div>
    <v-card :height="getHeight()">

        <video autoplay muted loop id="bgVideo">
            <source :src="require('~/assets/videos/landing-video.mp4')" type="video/mp4">
            Your browser does not support HTML5 video.
        </video>

        <!-- <v-container fluid class="content pa-0">
            <v-row>
                <v-col cols="6">
                    <small class="gradient-text1">All NFTS YOU NEED IN ONE MARKETPLACE</small>
                    <p class="text-h4 gradient-text1">
                        The Best Place To Collect,<br>
                        Buy And Sell Awesome Nfts
                    </p>
                    <p class="caption gradient-text1">
                        Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do<br> eiusmod tempor incididunt ut labore et dolore magna aliqua. Porttitor<br> rhoncus dolor purus non.
                    </p>
                    <v-row no-gutters>
                        <v-btn class="mr-5">
                            Explore More
                        </v-btn>
                        <v-btn>
                            Collect NFT
                        </v-btn>
                    </v-row>
                </v-col>

            </v-row>
        </v-container> -->
    </v-card>

</div>
</template>

<script>
export default {
    methods: {
        getHeight() {
            return window.innerHeight - 60
        }
    }
}
</script>

<style>
#bgVideo {
    position: absolute;
    right: 0;
    bottom: 0;
    min-width: 100%;
    min-height: 100%;
}

.content {
    position: fixed;
    top: 0;
    color: #f1f1f1;
    width: 100%;
    padding: 20px;
    margin-left:15%;
    margin-top:20%
}
</style>
