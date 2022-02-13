<template>
  <div>
      <div class="row justify-content-center">
        <div class="menu">
            <router-link class="btn btn-success"  to="/">Home</router-link>
            <router-link class="btn btn-success text-center"  to="/allUsers">All Users</router-link>
            <button class="btn btn-danger" @click="logout">Logout</button>
        </div>
      </div>
      <div class="row justify-content-center">
          <div class="col-md-6">
              <div class="card">
                  <div class="card-header">Now You Can Updated Profile</div>
                  <div class="card-body">
                      <v-form ref="form">
                        <div class="form-group">
                            <label for="name">Name</label>
                            <input type="text" class="form-control" name="name" v-model="name" >
                        </div>
                        <div class="form-group">
                            <label for="phone">Phone</label>
                            <input type="text" class="form-control" name="phone" v-model="phone">
                        </div>
                        <div class="form-group">
                            <label for="title">JobTitle</label>
                            <input type="text" class="form-control" name="title"  v-model="title">
                        </div>
                        <div class="form-group">
                            <label for="dec">Description</label>
                            <input type="text" class="form-control" name="dec"  v-model="dec">
                        </div>
                        <div class="form-group">

                            <!-- <div class="row"> -->
                                <label for="img">Upload your image</label>
                                <!-- <font-awesome-icon icon="camera" class="white--text mt-4 ml-2" style="font-size:30px;margin-right:-20px" /> -->
                                <!-- <v-file-input label="Image" show-size class="imagefileuplod" v-model="img" ></v-file-input> -->
                            <!-- </div>
                            <div class="row"> -->
                                <input
                                type="file"
                                id="file"
                                ref="myFiles"
                                multiple=""
                                accept="image/jpeg, image/jpg, image/png"
                                @change="previewFiles" >

                            <!-- </div> -->

                        </div>
                        <div class="form-group">
                            <button  class="btn btn-success"  v-on:click="submitForm()" >Update Now</button>
                        </div>
                      </v-form>
                  </div>
              </div>
          </div>
      </div>
  </div>

<!--
    <v-container>
        <v-form ref="form">
            <v-text-field :conter="35" label="Name" dark v-model="name" ></v-text-field>
            <v-text-field label="Phone" required dark v-model="phone" ></v-text-field>
            <v-text-field label="JobTitle" required dark v-model="title" ></v-text-field>
            <v-text-field label="Description" required dark v-model="dec" ></v-text-field>
            <v-row class="mb-2">
                <span>upload your image</span>
                <v-file-input label="Image" show-size dark v-model="img" ></v-file-input>
            </v-row>
            <v-btn color="success" v-on:click="submitForm()" class="mr-4">Update</v-btn>
        </v-form>
    </v-container> -->
</template>


<script>
export default {
    props: ['currentUser'],
    data: function() {
        return {
            currentUser: {},
            token: localStorage.getItem('token'),

            name: this.currentUser.name,
            phone: this.currentUser.phone,
            title: this.currentUser.title,
            dec: this.currentUser.dec,
            files: [],
            img: null
        }
    },

    methods: {
        previewFiles() {
            this.files = this.$refs.myFiles.files
        },
        submitForm(){
            const FormData = require('form-data');

            const formData = new FormData();
            this.name && formData.append('name', this.name);
            this.phone && formData.append('phone', this.phone);
            this.title && formData.append('title', this.title);
            this.dec && formData.append('dec', this.dec);
            // this.img && formData.append('img', this.img);
            this.files && formData.append('img', this.files);
            axios.post('api/update/users/'+this.currentUser.id, formData).then(response => {
                //  console.log(response.data.img)
                if(response.status >= 200 && response.status < 300) {
                    this.$router.push('users')
                }
            })
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
v-file-input.imagefileuplod {
    /* color: green !important;
    background: red !important; */
    border: 1px solid #000;
    width: 400px;
    height: 32px;
}
</style>
