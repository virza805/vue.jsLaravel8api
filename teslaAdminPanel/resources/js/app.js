import Vue from 'vue';
import VueRouter from 'vue-router';
import routes from './routes';
import index from './index';
import vuetify from './vuetify';
import axios from 'axios';
import VueAxios from 'vue-axios';
import { library } from '@fortawesome/fontawesome-svg-core'
import { faPen, faTrash, faCamera } from '@fortawesome/free-solid-svg-icons'
import { FontAwesomeIcon } from '@fortawesome/vue-fontawesome'

library.add(faPen, faTrash, faCamera)

Vue.component('font-awesome-icon', FontAwesomeIcon)



/**
 * First we will load all of this project's JavaScript dependencies which
 * includes Vue and other libraries. It is a great starting point when
 * building robust, powerful web applications using Vue and Laravel.
 */

// Vue.component('Date', required('components/Date.vue'));
Vue.use(VueAxios, axios)
Vue.use(VueRouter);
require('./bootstrap');

window.Vue = require('vue').default;


const app = new Vue({
    el: '#app',
    router: new VueRouter(routes),
    components: {
        index
    },
    vuetify
});


/**
 * The following block of code may be used to automatically register your
 * Vue components. It will recursively scan this directory for the Vue
 * components and automatically register them with their "basename".
 *
 * Eg. ./components/ExampleComponent.vue -> <example-component></example-component>
 */

// const files = require.context('./', true, /\.vue$/i)
// files.keys().map(key => Vue.component(key.split('/').pop().split('.')[0], files(key).default))

// #### Vue.component('example-component', require('./components/ExampleComponent.vue').default);

/**
 * Next, we will create a fresh Vue application instance and attach it to
 * the page. Then, you may begin adding components to this application
 * or customize the JavaScript scaffolding to fit your unique needs.
 */
//Vue.component('', require('./components/Home.vue').default);