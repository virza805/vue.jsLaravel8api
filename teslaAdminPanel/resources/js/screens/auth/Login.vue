<template>
    <div class="pa-0" style="max-height:100%; overflow:hidden;" >
        <v-img src="/assets/a3.jpg" height="450px" width="100vw" ></v-img>
        <v-card class="max-auto elevation-5 text-center pa-5" max-width="350" style="border-radius:20px;position:relative;top:-115px;margin: 0 auto;" >
            <v-card-subtitle class="title black--text pa-1">Login Now</v-card-subtitle>
            <v-card-subtitle class="pa-1"></v-card-subtitle>

            <v-text-field hide-details color="black" label="Email" v-model="form.email" > </v-text-field>
            <v-text-field hide-details color="black" label="Password" type="password" v-model="form.password" > </v-text-field>

            <v-card-actions>
                <v-btn class="mt-6" color="black" dark block rounded v-on:click="handleLogin()" >Login</v-btn>
            </v-card-actions>
        </v-card>
    </div>
</template>

<script>
import EventBus from '../../eventbus.js'
export default {
    data: function(){
        return {
            form: {
                email: '',
                password: '',
                device_name: 'browser'
            }
        }
    },
// to check this part
    methods: {
        handleLogin(){
            axios.get('/sanctum/csrf-cookie').then(response => {
                axios.post('admin/login', this.form).then(response => {
                    axios.get('api/user').then(response => {
                        if(response.status >= 200 && response.status < 300) {
                            if(this.form.email === response.data.email) {
                                EventBus.$emit('authCheck')
                                this.$router.push('/admin/categories')
                            }
                        }
                    })
                })
            });
        }
    },
};
</script>

<style>

</style>
