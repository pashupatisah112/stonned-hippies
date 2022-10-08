<template>
    <div class="timeline">
        <div class="timeline-list">
            <v-img class="timeline-box timeline-box-1" :src="require('~/assets/images/timeline-box.svg')"
                max-width="300">
                <p>Preparation, Assemble the Team, Investor Pitch Deck and Secure Seed funding</p>
            </v-img>
            <v-img class="timeline-box timeline-box-hover" :src="require('~/assets/images/timeline-box-hover.png')"
                max-width="300">
                <p>Preparation, Assemble the Team, Investor Pitch Deck and Secure Seed funding</p>
            </v-img>
            <div class="timeline-circle">
            </div>
            <v-img class="curvey-line curvey-line-1" :src="require('~/assets/images/curve-line.svg')" max-height="360"
                max-width="145">
            </v-img>
            <v-img class="curvey-line curvey-line-hover" :src="require('~/assets/images/curve-line-hover.png')"
                max-height="360" max-width="145">
            </v-img>
            <!-- </div> -->
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
            <v-img class="curvey-line curvey-line-1 curvey-line-rotate" :src="require('~/assets/images/curve-line.svg')"
                max-height="360" max-width="145">
            </v-img>
            <v-img class="curvey-line curvey-line-hover curvey-line-rotate"
                :src="require('~/assets/images/curve-line-hover.png')" max-height="360" max-width="145">
            </v-img>
            <v-img class="timeline-box timeline-box-1 timeline-box-rotate"
                :src="require('~/assets/images/timeline-box.svg')" max-width="300">
                <p>Community Platform Launch, Reveal of the Chronicle - Tale of the go-to-tea house "Sigis of Kabul",
                    First NFT sneak peeks and AMA Campaigns</p>
            </v-img>
            <v-img class="timeline-box timeline-box-rotate timeline-box-rotate-hover"
                :src="require('~/assets/images/timeline-box-hover.png')" max-width="300">
                <p>Community Platform Launch, Reveal of the Chronicle - Tale of the go-to-tea house "Sigis of Kabul",
                    First NFT sneak peeks and AMA Campaigns</p>
            </v-img>
        </div>
        <div class="timeline-list">
            <v-img class="timeline-box timeline-box-1" :src="require('~/assets/images/timeline-box.svg')"
                max-width="300">
                <p>Publish Whitepaper, Strategic Partnership and Collaboration, Official Mint date Announcement,
                    Showcase 2222 Stoned Hippies Gen-0 NFTs collection, Stoned Hippies DAO Setup</p>
            </v-img>
            <v-img class="timeline-box timeline-box-hover" :src="require('~/assets/images/timeline-box-hover.png')"
                max-width="300">
                <p>Publish Whitepaper, Strategic Partnership and Collaboration, Official Mint date Announcement,
                    Showcase 2222 Stoned Hippies Gen-0 NFTs collection, Stoned Hippies DAO Setup</p>
            </v-img>
            <div class="timeline-circle">
            </div>
            <v-img class="curvey-line curvey-line-1" :src="require('~/assets/images/curve-line.svg')" max-height="360"
                max-width="145">
            </v-img>
            <v-img class="curvey-line curvey-line-hover" :src="require('~/assets/images/curve-line-hover.png')"
                max-height="360" max-width="145">
            </v-img>
            <div class="timeline-text">
                <p class="mb-0">July - September 2022</p>
            </div>
        </div>
        <div class="timeline-list mb-8">
            <div class="timeline-text">
                <p class="mb-0">October - December 2022</p>
            </div>
            <div class="timeline-circle">
            </div>

            <v-img class="timeline-box timeline-box-1 timeline-box-rotate"
                :src="require('~/assets/images/timeline-box.svg')" max-width="300">
                <p>Mint and Secondary Market Listing, Tokenomics and Utilities, Stake to earn $SHR, Xmas Metaverse
                    Launch Party</p>
            </v-img>
            <v-img class="timeline-box timeline-box-rotate timeline-box-rotate-hover"
                :src="require('~/assets/images/timeline-box-hover.png')" max-width="300">
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
    margin-bottom: 170px;
}

.timeline-box {
    display: flex;
    align-items: center;
    font-size: 12px;
    transition: 0.3s ease-in-out;

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
    transition: 0.3s ease-in-out;
}

.timeline-list:hover .curvey-line-hover,
.timeline-list:hover .timeline-box-hover,
.timeline-list:hover .timeline-box-rotate-hover {
    visibility: visible;
    opacity: 1;
}

.timeline-list:hover .curvey-line-1,
.timeline-list:hover .timeline-box-1 {
    visibility: none;
    opacity: 0;
    transition: .3s ease-in-out;
}

.timeline-list:hover .timeline-circle {
    border: 2px solid #51FF0D;
}

.timeline-box-hover {
    position: absolute;
    opacity: 0;
    visibility: none;
}

.timeline-box-rotate-hover {
    position: absolute;
    right: 0;
    opacity: 0;
    visibility: none;
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

.curvey-line-hover {
    visibility: none;
    opacity: 0;
    transition: .3s ease-in-out;
}

.curvey-line-rotate {
    transform: scaleX(-1);
}
</style>