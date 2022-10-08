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
        <div class="video-container">
            <video muted loop id="bgVideo" class="mt-n16" style="opacity:0.6;">
                <source :src="require('~/assets/videos/main-back.mp4')" type="video/mp4" />
                Your browser does not support HTML5 video.
            </video>
            <ReusableMintButton class="btn-position" @click="playvid()" ButtonText="Mint" />
        </div>
    </div>
</template>

<script>
export default {
    data() {
        return {
            absolute: true,
            overlay: true,
            opacity: 1,
            playing: false
        };
    },
    computed: {

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
.video-container {
    position: relative;
}

.btn-position {
    position: absolute;
    bottom: 20%;
    left: 50%;
    transform: translate(-50%, -50%);
}
</style>
