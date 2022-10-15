<template>
    <div style="position:relative;">
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

        <div class="video-holder">
            <video muted loop id="bgVideo" :class="videoHeight" class="mt-n16">
                <source :src="require('~/assets/videos/main-back.mp4')" type="video/mp4" />
                Your browser does not support HTML5 video.
            </video>
        </div>
        <v-overlay :class="hidden" class="overlay" v-if="overlay" :absolute="absolute" :value="overlay"
            :opacity="opacity" @click="playvid()" style="min-height: 500px;">
            <v-card class="pa-0 pa-sm-14" max-width="510" color="transparent" flat>
                <v-col align="right" class="pa-3 pa-sm-0">
                    <!-- <v-img :src="require('~/assets/images/Static-text.png')">
                        <v-card color="transparent" flat style="position:absolute;bottom:0;right:0">
                            <p class="start-btn ml-10">GET IN ALREADY</p>
                        </v-card>
                    </v-img> -->
                    <div class="cta-box mb-6">
                        <v-img class="flower1" :src="require('~/assets/images/flower1.png')" max-width="100"
                            max-height="100"></v-img>
                        <p class="cta-text cta-red mb-0">Fuel up your SOL and <span class="mint-text">MINT</span></p>
                        <p class="cta-text cta-yellow mb-0">Your Stoned Hippie to get on that damn </p>
                        <p class="cta-text cta-green mb-0">Magic bus!</p>
                        <v-img class="flower2" :src="require('~/assets/images/flower2.png')" max-width="100"
                            max-height="100" style="position:absolute"></v-img>
                    </div>
                    <!-- <v-img :src="require('~/assets/images/Link.png')" @click="playvid()" class="mt-2 mx-auto link"
                        max-width="300"></v-img> -->
                </v-col>
            </v-card>
        </v-overlay>
        <ReusableMintButton ButtonText="Go To Mint" class="mint-btn" @click="mint()" />
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
            minturl: process.env.MINT_URL
        };
    },
    computed: {
        videoHeight() {
            switch (this.$vuetify.breakpoint.name) {
                case 'xs': return 'widthVideo'
                case 'sm': return 'widthVideo2'
                case 'md': return 'widthVideo3'
                case 'lg': return 'widthVideo3'
                case 'xl': return 'widthVideo3'
            }
        }
    },
    methods: {
        getHeight() {
            switch (this.$vuetify.breakpoint.name) {
                case 'md':
                case 'lg':
                    return window.innerHeight - 60;
            }
        },
        mint(){
            window.location.href='https://mint.stonedhippies.io'

            // if(window.location.origin =='https://stonedhippies.io/'){
            // }
            // else{
            //     window.location.href='https://staging-mint.stonedhippies.io'
            // }
        },
        playvid() {
            var vid = document.getElementById("bgVideo");
            vid.play();
            vid.muted = false;
            this.overlay = false;
            this.hidden = false;
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
    /* width: 100%; */
}

.widthVideo {
    width: 300%;
    transform: translate(-8%, -0);
}

.widthVideo2 {
    width: 140%;
    transform: translate(-12%, -0);
}

.widthVideo3 {
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

/* .start-btn {
    font-size: 40px;
    z-index: 5000;
    font-family: 'Psychedelia', sans-serif !important;
    color: #827c13;
} */

.link {
    cursor: pointer;
}

.no-hover:hover {
    background-color: none;
}

.vol-btn {
    z-index: 5;
}

.mint-btn {
    position: absolute;
    top: 60%;
    left: 50%;
    transform: translate(-50%, -50%);
    z-index: 1;
}

/* .cta-btn {
    word-wrap: break-word;
    border: 2px solid #E62D61;
    cursor: pointer;
} */
.cta-box {
    position: relative;
}

.cta-red {
    color: #C7412A;
}

.cta-yellow {
    color: #F6C93B;
}

.cta-green {
    color: #827c13;
}

.cta-text {
    text-align: center;
    font-size: 40px;
    font-family: 'Psychedelia', sans-serif !important;
    /* color: #E62D61 !important; */
}

.mint-text {
    color: #E12C5F;
    font-size: 50px;
}

.flower1 {
    position: absolute;
    right: 0;
    bottom: 0;
    transform: rotate(95deg);
}

.flower2 {
    left: 0;
    bottom: 0;
    /* transform: rotate(95deg); */
}


.overlay .v-overlay__scrim {
    background: #3f4213 !important;
}
</style>
