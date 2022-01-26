<?php

# npm install -g @vue/cli |=>
# vue create tesla |=>
# cd tesla || npm run serve |=> 
# vue add vuetify |=>
    // -> Configure (advanced)
# npm run serve |=>
#  |=> End Vuetify <=|


///// ===> Tesla Admin Panel <=== \\\\\\\\ sanctum

# composer create-project laravel/laravel teslaAdminPanel |=>
# cd teslaAdminPanel |=> 
# tesla |=> .env file
// (0) composer require doctrine/dbal |=>  Changing columns for table "status" requires Doctrine DBAL. Please install the
//  doctrine/dbal package.
// (1) A temporary solution would be going to your ===>> config/database.php <<=== and change the charset and collation from utf8mb4 to utf8
// 'charset' => 'utf8',
// 'collation' => 'utf8_unicode_ci',
#  |=> 


# composer require laravel/ui |=>
# php artisan ui vue |=>
# npm install |=>
# php artisan ui vue --auth |=>
# npm install |=>
# php artisan migrate |=>  again.
# php artisan serve |=> <=| npm i npm-watch --save | | npm run watch ||=> npm install vue-loader@^15.9.7 --save-dev --legacy-peer-deps | | npm run watch

# npm install --save vue-router |=> if you found some (vue-router not found) error then you can run this commend 
#  |=>

## Laravel Vuetify | How to use Vuetify with Laravel 8 - Coders Diaries ##

# npm i vuetify |=> 
# npm i sass sass-loader deepmerge -D -s |=>
#  |=>
# php artisan make:model Category -m |=> for create new table in database || then run |=> php artisan migrate
#  |=>
# php artisan make:controller CategoryController -r |=>
# npm i --save axios |=> 
#  |=>
#  |=> npm i --save @fortawesome/fontawesome-svg-core || == >> https://www.npmjs.com/package/@fortawesome/vue-fontawesome
#  |=> npm i --save @fortawesome/free-solid-svg-icons
#  |=> 
#  |=> import Vue from 'vue'
// import App from './App'
// import { library } from '@fortawesome/fontawesome-svg-core'
// import { faUserSecret } from '@fortawesome/free-solid-svg-icons'
// import { FontAwesomeIcon } from '@fortawesome/vue-fontawesome'

// library.add(faUserSecret)

// Vue.component('font-awesome-icon', FontAwesomeIcon)
// npm i --save @fortawesome/vue-fontawesome@latest
# |=>
# npm install form-data |=> for upload image & controlle from Data


##  |===>>>> teslaAdminPanel of Category part done <<<< ===|
# php artisan make:model Product -m |=> for create new table in database 
# goto database/migrations/2021_12_25_....._table.php || then write this bellow  & run |=> 
/* Schema::create('products', function (Blueprint $table) {
    $table->id();
    $table->string('name');
    $table->text('description')->nullable();
    $table->string('price');
    $table->string('image');
    $table->timestamps();
});

now you go app/Http/Models/Product.php
and pest this code below 

class Product extends Model
{
    use HasFactory;

    protected $guarded = [];
}

*/
# php artisan migrate |=>  run for create database table name product
# php artisan make:controller ProductController -r  |=> for control CRUD in products
#  |=> 
#  |=> 
#  |=> Products & Category CRUD done <=| #
#  |=> 
# flow this link for login with sucrity |=> https://laravel.com/docs/8.x/sanctum
#  |=> 
# composer require laravel/sanctum || php artisan vendor:publish --provider="Laravel\Sanctum\SanctumServiceProvider" || php artisan migrate |=> 
#  |=> 
# php artisan make:migration add_product_category_id --table=products |=> 
#  |=> 
# npm install vuex --save |=> for card 
# npm install --save vuex-persistedstate |=> 
#  |=> 
#  |=> 
#  |=> 
#  |=> https://stackoverflow.com/questions/66502231/laravel-and-vuejs-project-it-shows-the-error-module-not-found-error-cant-res
#  |=> npm install --save vue-router || npm run watch

/*
admin || Login | Logout | Sanctum ==>> kaj kora na
*/


