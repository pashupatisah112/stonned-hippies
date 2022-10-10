<template>
    <div>
        <v-row>
            <v-col>
                <v-btn icon v-if="playing" @click="soundOff()" x-large class="vol-btn">
                    <v-icon x-large>mdi-volume-high</v-icon>
                </v-btn>
                <v-btn icon v-else @click="soundOn()" x-large class="vol-btn">
                    <v-icon x-large>mdi-volume-mute</v-icon>
                </v-btn>
            </v-col>
        </v-row>
        <iframe src="https://staging-mint.stonedhippies.io" class="iframe" width="400" height="250"  frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope" ></iframe>

        <video muted loop id="bgVideo" class="mt-n16">
            <source :src="require('~/assets/videos/main-back.mp4')" type="video/mp4" />
            Your browser does not support HTML5 video.
        </video>
        <v-overlay v-if="overlay" :absolute="absolute" :value="overlay" :opacity="opacity" @click="playvid()">

            <v-card max-width="500" style="padding:50px;" color="transparent" flat>
                <v-col align="right" class="pa-8 pa-sm-0">
                    <v-img :src="require('~/assets/images/Static-text.png')">
                        <v-card color="transparent" flat style="position:absolute;bottom:0;right:0">
                            <p class="start-btn ml-10">GET IN ALREADY</p>
                        </v-card>
                    </v-img>
                    <v-img :src="require('~/assets/images/Link.png')" @click="playvid()" class="mt-2 mx-auto link"
                        max-width="300"></v-img>
                </v-col>
            </v-card>
        </v-overlay>
        <ReusableMintButton />


    </div>
</template>

<script>
export default {
    data() {
        return {
            absolute: true,
            overlay: true,
            opacity: 1,
            playing: false,
            minturl:process.env.MINT_URL
        };
    },
    methods: {
        getHeight() {
            switch (this.$vuetify.breakpoint.name) {
                case 'md':
                case 'lg':
                    return window.innerHeight - 60;
            }
        },
        playvid() {
            var vid = document.getElementById("bgVideo");
            vid.play();
            vid.muted = false;
            this.overlay = false;
            this.playing = true
        },
        soundOn() {
            var vid = document.getElementById("bgVideo");
            vid.muted = false
            this.playing = true
        },
        soundOff() {
            var vid = document.getElementById("bgVideo");
            vid.muted = true
            this.playing = false
        }
    },
};
</script>

<style>
#bgVideo {
    position: static;
    right: 0;
    bottom: 0;
    width: 100%;
}

.content {
    position: fixed;
    top: 0;
    color: #f1f1f1;
    width: 100%;
    padding: 20px;
    margin-left: 15%;
    margin-top: 20%;
}

.start-btn {
    font-size: 40px;
    z-index: 5000;
    font-family: 'Psychedelia', sans-serif !important;
    color: #827c13;
}

.link {
    cursor: pointer;
}

.no-hover:hover {
    background-color: none;
}

.vol-btn {
    z-index: 1;
}
.iframe{
    position: absolute;
    top:20%;
    left:40%;
    z-index: 5000;
}
</style>
