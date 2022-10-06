<template>
    <div class=" pt-16" style="background: linear-gradient(180deg, #64671A 0%, #608A5A 94.77%);">
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
            <v-row class="justify-space-around mb-8">
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
                    gallery_name: 'abc',
                    image: require('~/assets/images/2.png'),
                    text: 'Fernly likes hiking when he is high. And by hiking, I don’t mean plain walking. He has to climb up and descend down and be in the woods. '
                },
                {
                    id: '2',
                    gallery_name: 'abcd',
                    image: require('~/assets/images/3.png'),
                    text: 'jadeend has drinks stocked at his home but he has to go out and drink. the walls in his room confine him.'
                },
                {
                    id: '3',
                    gallery_name: 'abcde',
                    image: require('~/assets/images/1.png'),
                    text: 'people think he doesn’t talk much. Little do they know that once he starts to talk, only he talks as he  walks but I tell you, none of his words are nonsense.'
                }, {
                    id: '4',
                    gallery_name: 'abc',
                    image: require('~/assets/images/2.png'),
                    text: 'Fernly likes hiking when he is high. And by hiking, I don’t mean plain walking. He has to climb up and descend down and be in the woods. '
                },
                {
                    id: '5',
                    gallery_name: 'abcd',
                    image: require('~/assets/images/3.png'),
                    text: 'jadeend has drinks stocked at his home but he has to go out and drink. the walls in his room confine him.'
                },
                {
                    id: '6',
                    gallery_name: 'abcde',
                    image: require('~/assets/images/1.png'),
                    text: 'people think he doesn’t talk much. Little do they know that once he starts to talk, only he talks as he  walks but I tell you, none of his words are nonsense.'
                },
                {
                    id: '7',
                    gallery_name: 'abc',
                    image: require('~/assets/images/2.png'),
                    text: 'Fernly likes hiking when he is high. And by hiking, I don’t mean plain walking. He has to climb up and descend down and be in the woods. '
                },
                {
                    id: '8',
                    gallery_name: 'abcd',
                    image: require('~/assets/images/3.png'),
                    text: 'jadeend has drinks stocked at his home but he has to go out and drink. the walls in his room confine him.'
                },
                {
                    id: '9',
                    gallery_name: 'abcde',
                    image: require('~/assets/images/1.png'),
                    text: 'people think he doesn’t talk much. Little do they know that once he starts to talk, only he talks as he  walks but I tell you, none of his words are nonsense.'
                }
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