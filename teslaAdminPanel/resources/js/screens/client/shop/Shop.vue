<template>
    <div style="background-color: #fff;">
        <v-carousel hide-delimiters>
            <v-carousel-item src="https://tesla-cdn.thron.com/delivery/public/image/tesla/da705069-91b5-41cb-86f3-86a585c6fdf3/bvlatuR/std/2880x1800/MX-Hero-Desktop">
                <v-row class="fill-height" align="center" justify="center" >
                    <div class="display-2 pl-5 pr-5 white--text hidden-sm-only"><strong></strong></div> <br>
                </v-row>
            </v-carousel-item>

            <v-carousel-item src="https://cdn.motor1.com/images/mgl/2gzOk/s1/tesla-roadster.jpg">
                <v-row class="fill-height" align="center" justify="center" >
                    <div class="display-2 pl-5 pr-5 white--text hidden-sm-only"><strong></strong></div> <br>
                </v-row>
            </v-carousel-item>

            <v-carousel-item src="https://www.cnet.com/a/img/n5xOaIP4lDhvZm2P3sOcQET5nI8=/1200x675/2021/01/28/83032a7e-8ee2-4807-a225-cd3f989a84cb/ms-ogi2.jpg">
                <v-row class="fill-height" align="center" justify="center" >
                    <div class="display-2 pl-5 pr-5 white--text hidden-sm-only"><strong></strong></div> <br>
                </v-row>
            </v-carousel-item>

        </v-carousel>

        <div class="pr-4 pl-4 row mt-4">


            <div class="col-md-6 col-sm-6 col-xs-12" v-for="category in categories.slice(0,2)" :key="category.id" >
                <v-card>
                    <v-img
                    :src="'/categories/'+category.image"
                    class="white--text align-center"
                    gradient="to bottom, rgba(0,0,0,.1), rgba(0,0,0,.5)" height="400px" >
                        <h1 class="text-center font-size">{{ category.name }}</h1>
                        <div class="text-center">
                            <v-btn @click="()=> $router.push({name: 'CategoryProducts', query: {category}})" class="white--text" outlined >View Products</v-btn>
                        </div>
                    </v-img>
                </v-card>
            </div>

        </div>
        <div class="pl-4 pr-4 row">
            <div class="col-md-4 col-sm-4 col-xs-12" v-for="category in categories.slice(2,5)" :key="category.id">
                <v-card>
                    <v-img :src="'/categories/'+category.image" class="white--text align-center" gradient="to bottom, rgba(0,0,0,.1), rgba(0,0,0,.5)" height="400px" >
                        <h1 class="text-center font-size">{{ category.name }}</h1>
                        <div class="text-center">
                            <v-btn
                            @click="()=> $router.push({name: 'CategoryProducts', query: {category}})"
                            class="white--text"
                            outlined >View Products</v-btn>
                        </div>
                    </v-img>
                </v-card>
            </div> <!--end-1-->


        </div>

        <v-container>
            <v-row no-gutters>
                <v-col :cols="12">
                    <v-card-text title outlined>
                        <v-card-title class="subheading">Latest Products</v-card-title>
                        <v-divider></v-divider>
                        <div class="row">
                            <div class="col-12 col-md-2 col-sm-4 col-xs-6 text-center" v-for="product in products" :key="product.id" >
                                <v-hover
                                v-slot:default="{ hover }"
                                open-delay="240">
                                    <v-card :elevation="hover ? 16 : 2" >
                                        <v-img
                                        class="white--text align-end" height="200px"
                                        :src="'/products/'+product.image" >
                                            <v-card-title>{{ product.name }}</v-card-title>
                                        </v-img>
                                        <v-card-text class="text-center text--primary">
                                            <div>{{ product.price }}</div>
                                            <div>{{ product.category.name }}</div>
                                        </v-card-text>
                                        <div class="text-center">
                                            <v-btn
                                            @click="()=> $router.push({name: 'ProductDetails', query: {product}})"
                                            class="ma-2"
                                            outlined
                                            color="info">Product Details</v-btn>
                                        </div>
                                    </v-card>
                                </v-hover>
                            </div><!-- end-1 -->


                        </div>
                    </v-card-text>
                </v-col>
            </v-row>
        </v-container>

    </div>
</template>

<script>
export default {
    data: function() {
        return{
            categories: [],
            products: []
        }
    },
    methods: {
        getCategories(){
            axios.get('api/categories').then(response => {
                if(response.status >= 200 && response.status <300) {
                    this.categories = response.data.categories
                }
            })
        },
        getLatestProducts(){
            axios.get('api/latestProduct').then(response => {
                if(response.status >= 200 && response.status <300) {
                    this.products = response.data.products
                }
            })
        },
        navigateToCategoryScreen(category) {
            $router.push({name: 'CategoryProducts', query: {category}})
        }
    },
    mounted() {
        this.getCategories();
        this.getLatestProducts();
    },
};
</script>

<style>

</style>
