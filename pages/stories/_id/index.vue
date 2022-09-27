<template>
    <div class="mt-16 pt-16" style="background: linear-gradient(180deg, #64671A 0%, #608A5A 94.77%);">
        <v-container>
            <v-row>
                <v-breadcrumbs :items="items">
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
                    <GalleryStoryCard :galleryId="item.id" :title="item.gallery_name" :image="item.image" />
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
                    href: '../story',
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
                },
                {
                    id: '2',
                    gallery_name: 'abcd',
                    image: require('~/assets/images/3.png'),
                },
                {
                    id: '3',
                    gallery_name: 'abcde',
                    image: require('~/assets/images/1.png'),
                }
            ],
        }
    }
}
</script>

<style lang="css">

</style>