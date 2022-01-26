<template>
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-10 mb-4">
                <h4 class="text-center">Welcome to the SPA in Laravel & Vue.js ( <b class="text-success">{{ currentUser.name }}</b> ) </h4>
                <p class="text-center text-success">{{ currentUser.email }}</p>
                <button class="btn btn-danger" @click="logout">Logout</button>
        <router-link class="btn btn-primary float-right" to="/create">Create</router-link>
            </div>
        </div>
        <div class="row justify-content-center">
            <div class="col-md-10">
                <table class="table">
                    <thead>
                        <tr>
                            <th>#</th>
                            <th>Name</th>
                            <th>Position</th>
                            <th>Email</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr v-for="(employee, index) in employees" :key="index" >
                            <td>{{ index + 1 }}</td>
                            <td>{{ employee.name }}</td>
                            <td>{{ employee.position }}</td>
                            <td>{{ employee.email }}</td>
                            <td>
                                <!-- <a href="" class="btn btn-success">Add</a> -->
                                <router-link  class="btn btn-success" :to="{name: 'edit', params: {id: employee.id}}" >Edit</router-link>
                                <a @click="deleteEmployee(employee.id)" class="btn btn-danger">Delete</a>
                            </td>
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
                employees: {},
                currentUser: {},
                token: localStorage.getItem('token')
            }
        },
        methods: {
            getEmployees(){
                axios.get('index').then((response)=>{
                    this.employees = response.data
                    // console.log(response.data)
                }).catch((errors) => {
                    console.log(errors);
                });
            },
            deleteEmployee(employee_id){
                Swal.fire({
                    title: 'Are you sure?',
                    text: "You won't be able to revert this!",
                    icon: 'warning',
                    showCancelButton: true,
                    confirmButtonColor: '#3085d6',
                    cancelButtonColor: '#d33',
                    confirmButtonText: 'Yes, delete it!'
                    }).then((result) => {
                    if (result.isConfirmed) {
                        axios.post('employee/delete/' + employee_id).then((response) => {
                            this.getEmployees()
                            console.log(response)
                        }).catch((errors) => {
                                console.log(errors);
                            });
                        Swal.fire(
                        'Deleted!',
                        'Your record has been deleted.',
                        'success'
                        )
                    }
                })
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
            this.getEmployees()
            axios.get('api/user').then((response) => {
                this.currentUser = response.data
            }).catch((errors) => {
                console.log(errors)
            })
        }
    }
</script>

<style>

</style>
