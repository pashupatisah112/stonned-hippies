<template>
<div>
        <video autoplay muted loop id="bgVideo" class="mt-n16" style="">
            <source :src="require('~/assets/videos/landing-video.mp4')" type="video/mp4">
            Your browser does not support HTML5 video.
        </video>

</div>
</template>

<script>
export default {
    methods: {
        getHeight() {
            return window.innerHeight - 60
        },
    }
}
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
    margin-top: 20%
}
</style>
