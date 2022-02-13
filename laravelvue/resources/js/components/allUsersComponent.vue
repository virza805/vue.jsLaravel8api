<template>
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-10 mb-4">
                <h4 class="text-center">Paginated list of all users </h4>
                <p class="text-center text-success">( Current User <b class="text-success">{{ currentUser.name }}</b> )</p>
                <div class="menu">
                    <router-link class="btn btn-success"  to="/">Home</router-link>
                    <router-link class="btn btn-success text-center"  to="/allUsers">All Users</router-link>
                    <button class="btn btn-danger" @click="logout">Logout</button>
                </div>
            </div>
        </div>
        <div class="row justify-content-center">
            <div class="col-md-10">
                <table class="table">
                    <thead>
                        <tr>
                            <th>#</th>
                            <th>Image</th>
                            <th>UserName</th>
                            <th>Email</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr v-for="(user, index) in users" :key="index" >
                            <td>{{ index + 1 }}</td>
                            <td>Image</td>
                            <td>{{ user.name }}</td>
                            <td>{{ user.email }}</td>

                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</template>

<script>
    export default {
        data() {
            return {
                users: {},
                currentUser: {},
                token: localStorage.getItem('token')
            }
        },
        methods: {
            getUser(){
                axios.get('api/users').then((response)=>{
                    this.users = response.data
                    // console.log(response.data)
                }).catch((errors) => {
                    console.log(errors);
                });
            },

            logout() {
                axios.post('api/logout').then((response) => {
                    localStorage.removeItem('token')
                    this.$router.push('/login')
                }).catch((errors))
            }
        },
        mounted() {
            // console.log('Component mounted.')
            window.axios.defaults.headers.common['Authorization'] = `Bearer ${this.token}`
            this.getUser()
            axios.get('api/user').then((response) => {
                this.currentUser = response.data
            }).catch((errors) => {
                console.log(errors)
            })
        }
    }
</script>

<style>

    .menu {
        display: flex;
        align-content: center;
        justify-content: space-between;
        align-items: center;
    }
</style>
