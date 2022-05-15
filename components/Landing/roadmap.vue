<template>
<div>
    <v-container class="pa-16">
        <v-row justify="center">
            <p class="text-h4">ROAD MAP</p>
        </v-row>
        <v-row>
            <v-col cols="12" lg="8">
                <v-timeline>
                    <v-timeline-item v-for="(item, i) in roadmap" :key="i" class="my-16" small>
                        <template v-slot:opposite>
                            <div v-for="(des,j) in item.events" :key="j" class="caption ">
                                {{des.title}}
                            </div>
                        </template>
                        <span v-text="item.date" class="text-right"></span>

                    </v-timeline-item>
                </v-timeline>

            </v-col>
            <v-col cols="12" lg="4" align="center">
                <v-img :src="require('~/assets/images/roadmap-img.png')" class="mt-16" max-width="300"></v-img>
            </v-col>
        </v-row>
    </v-container>
</div>
</template>

<script>
export default {
    data() {
        return {
            roadmap: [

                {
                    date: '2021 Q4',
                    events: [{
                            title: 'Completion of the character concept design'
                        },
                        {
                            title: 'Official twitter account and discord channel launch'
                        },
                        {
                            title: 'Stonned hippies official website launch'
                        }
                    ]
                },
                {
                    date: 'JANUARY 2022',
                    events: [{
                        title: 'Road map announcement'
                    }]
                },
                {
                    date: 'FEBRUARY 2022',
                    events: [{
                            title: 'Completion of the smart contract audit process'
                        },
                        {
                            title: 'Whitelisting begins (select your island)'
                        }
                    ]
                },
            ],
        }
    }
}
</script>

<style>
.v-timeline-item__inner-dot {
    background-color: white !important;
}

.theme--dark.v-timeline::before {
    background: linear-gradient(264.75deg, #FE87FF 3.04%, #1905DA 99.63%);
}
.theme--dark.v-timeline .v-timeline-item__dot {
    background: transparent;
}
.v-application .primary {
    background-color: white !important;
}
</style>
