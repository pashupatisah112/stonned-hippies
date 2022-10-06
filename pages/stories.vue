<template>
    <div class="pt-16" style="background: linear-gradient(180deg, #64671A 0%, #608A5A 94.77%);">
        <v-container>
            <v-row>
                <v-breadcrumbs :items="items" style="color:white" dark>
                    <template v-slot:divider>
                        <v-icon>mdi-chevron-right</v-icon>
                    </template>
                </v-breadcrumbs>
            </v-row>
            <v-row justify="center">
                <p class="text-h4">Stories</p>
            </v-row>
            <v-row justify="center">
                <p>22 NFT Character Stories | Stoned Hippies Realm</p>
            </v-row>
            <v-row class="justify-center justify-md-space-between mb-8 pa-12">
                <div v-for="(item, i) in nfts" :key="i">
                    <GalleryStoryCard :galleryId="item.id" :title="item.gallery_name" :image="item.image"
                        :text="item.text" />
                </div>
            </v-row>
        </v-container>
    </div>
</template>

<script>
export default {
    data() {
        return {
            items: [
                {
                    text: 'Our Story',
                    disabled: false,
                    href: '/story',
                },
                {
                    text: 'Stories',
                    disabled: true,
                    href: 'stories',
                },
            ],

            nfts: [
                {
                    id: '1',
                    gallery_name: 'Fernley',
                    image: require('~/assets/images/nfts/fernley.png'),
                    text: 'I am Fernly. I like to hike when I am high. And by hiking, I don’t mean plain walking. I have to climb up and descend down and be in the woods.'
                },
                {
                    id: '2',
                    gallery_name: 'Jadeend',
                    image: require('~/assets/images/nfts/Jadeend.png'),
                    text: 'I have drinks stocked at home, in the shoe cabinet, under the bed, inside the junkbin, in my bag, pocket, everywhere literally. Despite that, I still have to go out and drink. The walls in my room confine me.'
                },
                {
                    id: '3',
                    gallery_name: 'Pearsyd',
                    image: require('~/assets/images/nfts/Pearsyd.png'),
                    text: ' I come with a warning! “Do not come near me” It is because my entire body especially my hair reeks of cheap alcohol and grass. but let me also tell you that these are not cheap alcohol that you smell off me.'
                },
                {
                    id: '4',
                    gallery_name: 'Teamor',
                    image: require('~/assets/images/nfts/Teamor.png'),
                    text: 'I have a lowkey OCD that I don’t admit to having it. I like to keep my pockets and wallets clean. And when I have to take a whiff, I always smoke off his friend’s joint and later kiss their magical hands like they do to chef when they cook yum food. This is me. Neat and Naughty.'
                },
                {
                    id: '5',
                    gallery_name: 'Sagen',
                    image: require('~/assets/images/nfts/Sagen.png'),
                    text: 'People think I don’t talk much. Little do they know that once I start to, I talk as I walk, and talk as I take every hit. This when you will see my years of anthropology degree reflect in my words.'
                },
                {
                    id: '6',
                    gallery_name: 'Limeco',
                    image: require('~/assets/images/nfts/Limeco.png'),
                    text: 'As the season changes, so does my hair color. I apply my personality in a color paste. And as my hair color changes, so does my playlist, a happy playlist in october, a hopeless romantique the next.'
                },
                {
                    id: '7',
                    gallery_name: 'Mossie',
                    image: require('~/assets/images/nfts/Mossie.png'),
                    text: 'I like to befriend every creature I meet on the way, I like to hug trees and sleep under the sky when I am high.'
                },
                {
                    id: '8',
                    gallery_name: 'Mintis',
                    image: require('~/assets/images/nfts/Mintis.png'),
                    text: 'My drug / fuel is my instrument. I plays it when I celebrate and also when I mourn.'
                },
                {
                    id: '9',
                    gallery_name: 'Armyson',
                    image: require('~/assets/images/nfts/Armyson.png'),
                    text: 'People say I look a little salty and grumpy. But everything goes away as I earn my brownie point with the yummy food I make.'
                },
                {
                    id: '10',
                    gallery_name: 'Basilob',
                    image: require('~/assets/images/nfts/Basilob.png'),
                    text: 'I am a little timid, a lot shy and I always need a pack of my booster whiskey or a whiff of the smoking fresh grass when I have to face the world. It helps me, it really does.'
                },
                {
                    id: '11',
                    gallery_name: 'Weedert',
                    image: require('~/assets/images/nfts/Weedert.png'),
                    text: 'I am a cocktail, bred in Jew and Buddhist Parents. I practice Kindness, happiness and craziness . Yup! that is my religion.  '
                },
                {
                    id: '12',
                    gallery_name: 'Emeraul',
                    image: require('~/assets/images/nfts/Emeraul.png'),
                    text: ' I am the passionate artist friend in my group. Empty walls, car doors, name any and that is my canvas. '
                },
                {
                    id: '13',
                    gallery_name: 'Pickleage',
                    image: require('~/assets/images/nfts/Pickleage.png'),
                    text: 'I have songs for every occasion. Y’all say I am mysterious, gotta tell you that its not the mystery. I am just not the best at sharing my feelings.'
                },
                {
                    id: '14',
                    gallery_name: 'Mossana',
                    image: require('~/assets/images/nfts/Mossana.png'),
                    text: 'Guess who’s the life and keeps the soul alive at CIGIS-the tea shop ? you guessed it right!'
                },
                {
                    id: '15',
                    gallery_name: 'Appleton',
                    image: require('~/assets/images/nfts/Appleton.png'),
                    text: 'I like my jewellery aka bling bling. Doesn’t mind if I get good grass or not, a fine bling does the work for me.'
                },
                {
                    id: '16',
                    gallery_name: 'Tealith',
                    image: require('~/assets/images/nfts/Tealith.png'),
                    text: 'My throat gets dry and my eyes super red with an instant whiff. Crazy as it sounds but guess what helps my throat get back to life? A pint of beer! ;D I know right!!'
                },
                {
                    id: '17',
                    gallery_name: 'Kaleson',
                    image: require('~/assets/images/nfts/Kaleson.png'),
                    text: 'People say I look a little salty and grumpy. But everything goes away as I earn my brownie point with the yummy food I make.'
                },
                {
                    id: '18',
                    gallery_name: 'Oliver',
                    image: require('~/assets/images/nfts/Oliver.png'),
                    text: ' I Have a table full of friends yet I am out all by himself. In self, I find my needed solace. I like to be alone but I am not a loner.'
                },
                {
                    id: '19',
                    gallery_name: 'Slimzy',
                    image: require('~/assets/images/nfts/Armyson.png'),
                    text: 'I am a simple man. I just gotta sip my masala tea before taking a puff; any time of the day.'
                },
                {
                    id: '20',
                    gallery_name: 'Cloverin',
                    image: require('~/assets/images/nfts/Cloverin.png'),
                    text: 'My thoughts are sweet poetry and if I was to ever write a book, it’d be a compilation of all the musings I’ve drafted in my journal and title it Four-leaves clover..'
                },
                {
                    id: '21',
                    gallery_name: 'Seammy',
                    image: require('~/assets/images/nfts/Seammy.png'),
                    text: 'Finding words to make conversation drains me so I put my earphones on all the time to avoid these conversations.'
                },
                {
                    id: '22',
                    gallery_name: 'Artichee',
                    image: require('~/assets/images/nfts/Artichee.png'),
                    text: 'The tea person ! My day starts with a strong cuppa black tea and ends with even stronger cuppa black tea! Let it be raining or scorching sun, there’s gotta be tea !'
                },
            ],
        }
    }
}
</script>

<style lang="css">
.v-application a {
    color: #FFF;
}
</style>