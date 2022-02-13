<template>
  <div>
      <div class="row justify-content-center">
          <div class="col-md-6">
              <div class="card">
                  <div class="card-header">Register</div>
                  <div class="card-body">
                      <div class="form-group">
                          <label for="name">Name</label>
                          <input type="text" name="name" class="form-control" v-model="formData.name">
                          <p class="text-danger" v-text="errors.name"></p>
                      </div>
                      <div class="form-group">
                          <label for="email">Email</label>
                          <input type="text" name="email" class="form-control" v-model="formData.email">
                          <p class="text-danger" v-text="errors.email"></p>
                      </div>
                      <div class="form-group">
                          <label for="password">Password</label>
                          <input type="password" name="password" class="form-control" v-model="formData.password">
                          <p class="text-danger" v-text="errors.password"></p>
                      </div>
                      <div class="form-group">
                          <label for="password_confirmation">ConfirmPassword</label>
                          <input type="password" name="password_confirmation" class="form-control" v-model="formData.password_confirmation">
                          <p class="text-danger" v-text="errors.password_confirmation"></p>
                      </div>


                      <div class="form-group">
                          <label for="phone">phone</label>
                          <input type="text" name="phone" class="form-control" v-model="formData.phone">
                          <p class="text-danger" v-text="errors.phone"></p>
                      </div>
                      <div class="form-group">
                          <label for="title">title</label>
                          <input type="text" name="title" class="form-control" v-model="formData.title">
                          <p class="text-danger" v-text="errors.title"></p>
                      </div>
                      <div class="form-group">
                          <label for="dec">dec</label>
                          <input type="text" name="dec" class="form-control" v-model="formData.dec">
                          <p class="text-danger" v-text="errors.dec"></p>
                      </div>
                      <div class="form-group">
                          <label for="img">img</label>
                          <input type="text" name="img" class="form-control" v-model="formData.img">
                          <p class="text-danger" v-text="errors.img"></p>
                      </div>

                      <div class="row">
                          <div class="col-md-6">
                              <div class="form-group">
                                  <button @click="registerUser" class="btn btn-primary">Register</button>
                              </div>
                          </div>
                          <div class="col-md-6 text-right">
                              <router-link to="/login">Already have an Account!</router-link>
                          </div>
                      </div>
                  </div>
              </div>
          </div>
      </div>
  </div>
</template>

<script>
export default {
    data() {
        return {
            formData: {
                name: '',
                email: '',
                password: '',
                password_confirmation: '',
                phone: '',
                title: '',
                dec: '',
                img: '',
            },
            errors: {}
        }
    },
    methods: {
        registerUser(){
            axios.post('api/register', this.formData).then((response) => {
                console.log(response.data)
                this.formData.phone = this.formData.title = this.formData.img = this.formData.dec = this.formData.name = this.formData.email = this.formData.password = this.formData.password_confirmation = ''
                this.errors = {}
                this.$router.push('/login')
                this.$toaster.success('Account created successfully, now you can login!')

            }).catch((errors) => {
                this.errors = errors.response.data.errors
                console.log(errors.response.data.errors)
            });
        }
    },
}
</script>

<style>

</style>
