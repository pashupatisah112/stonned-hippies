<template>
    <div class="timeline">
        <div class="timeline-list">
            <v-img class="timeline-box" :src="require('~/assets/images/timeline-box.svg')" max-width="300">
                <p>Preparation, Assemble the Team, Investor Pitch Deck and Secure Seed funding</p>
            </v-img>
            <div class="timeline-circle">
            </div>
            <v-img class="curvey-line" :src="require('~/assets/images/curve-line.svg')" max-height="360"
                max-width="145">
            </v-img>
            <div class="timeline-text">
                <p class="mb-0">January - March 2022</p>
            </div>
        </div>
        <div class="timeline-list ">
            <div class="timeline-text">
                <p class="mb-0">April - June 2022</p>
            </div>
            <div class="timeline-circle">
            </div>
            <v-img class="curvey-line curvey-line-rotate" :src="require('~/assets/images/curve-line.svg')"
                max-height="360" max-width="145">
            </v-img>

            <v-img class="timeline-box timeline-box-rotate" :src="require('~/assets/images/timeline-box.svg')"
                max-width="300">
                <p>Community Platform Launch, Reveal of the Chronicle - Tale of the go-to-tea house "Sigis of Kabul",
                    First NFT sneak peeks and AMA Campaigns</p>
            </v-img>
        </div>
        <div class="timeline-list">
            <v-img class="timeline-box" :src="require('~/assets/images/timeline-box.svg')" max-width="300">
                <p>Publish Whitepaper, Strategic Partnership and Collaboration, Official Mint date Announcement,
                    Showcase 2222 Stoned Hippies Gen-0 NFTs collection, Stoned Hippies DAO Setup</p>
            </v-img>
            <div class="timeline-circle">
            </div>
            <v-img class="curvey-line" :src="require('~/assets/images/curve-line.svg')" max-height="360"
                max-width="145">
            </v-img>
            <div class="timeline-text">
                <p class="mb-0">July - September 2022</p>
            </div>
        </div>
        <div class="timeline-list ">
            <div class="timeline-text">
                <p class="mb-0">October - December 2022</p>
            </div>
            <div class="timeline-circle">
                <!-- <img class="curve-line-rotate" :src="require('~/assets/images/curve-line.svg')" /> -->
            </div>

            <v-img class="timeline-box timeline-box-rotate" :src="require('~/assets/images/timeline-box.svg')"
                max-width="300">
                <p>Mint and Secondary Market Listing, Tokenomics and Utilities, Stake to earn $SHR, Xmas Metaverse
                    Launch Party</p>
            </v-img>
        </div>
    </div>
</template>

<script>
export default {

}
</script>

<style lang="css">
.timeline-list {
    display: flex;
    align-items: center;
    justify-content: space-between;
    position: relative;
    margin-bottom: 160px;
}

.timeline-box {
    display: flex;
    align-items: center;
    font-size: 12px;
}

.timeline-box-rotate .v-image__image {
    transform: rotate(180deg);
}

.timeline-box p {
    margin: 0;
    max-width: 80%;
    text-align: left;
}

.timeline-circle {
    height: 20px;
    width: 20px;
    min-width: 20px;
    border: 2px solid #0B1A50;
    background: #500B28;
    border-radius: 50%;
    position: relative;
    z-index: 1;
}

.timeline-text {
    max-width: 160px;
    min-width: 160px;
}

.curvey-line {
    position: absolute;
    left: 0;
    right: 0;
    top: 65px;
    margin: 0 auto;
}

.curvey-line-rotate {
    transform: scaleX(-1);
}

.curvey-line .v-image__image {
    /* transform: rotate(-10deg); */
}
</style>