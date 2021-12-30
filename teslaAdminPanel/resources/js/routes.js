import Home from './components/Home.vue'
import Categories from './screens/admin/category/Categories.vue'
import AddCategory from './screens/admin/category/AddCategory.vue'
import EditCategory from './screens/admin/category/EditCategory.vue'
import AddProduct from './screens/admin/product/AddProduct.vue'
import Products from './screens/admin/product/Products.vue'
import EditProduct from './screens/admin/product/EditProduct.vue'
import HomePage from './screens/client/HomePage.vue'
import Login from './screens/auth/Login.vue'
import Shop from './screens/client/shop/Shop.vue'
import ProductDetails from './screens/client/shop/ProductDetails.vue'
import CategoryProducts from './screens/client/shop/CategoryProducts.vue'
import Cart from './screens/client/shop/Cart.vue'

export default {
    mode: 'history',
    routes: [{
            path: '/admin',
            component: Home
        },
        {
            path: '/admin/categories',
            component: Categories
        },
        {
            path: '/admin/addCategory',
            component: AddCategory
        },
        {
            path: '/admin/editCategory',
            component: EditCategory,
            props: true,
            name: 'EditCategory'
        },
        {
            path: '/admin/addProduct',
            component: AddProduct
        },
        {
            path: '/admin/products',
            component: Products
        },
        {
            path: '/admin/editProduct',
            component: EditProduct,
            props: true,
            name: 'EditProduct'
        },
        {
            path: '/home',
            component: HomePage
        },
        {
            path: '/login',
            component: Login,
            name: 'Login'
        },
        {
            path: '/shop',
            component: Shop,
            name: 'Shop'
        },
        {
            path: '/shop/productDetails',
            component: ProductDetails,
            props: true,
            name: 'ProductDetails'
        },
        {
            path: '/shop/category/products',
            component: CategoryProducts,
            props: true,
            name: 'CategoryProducts'
        },
        {
            path: '/shop/cart',
            component: Cart,
            name: 'Cart'
        }

    ]
}

// [\vendor\laravel\sanctum\database\migrations] To [\database\migrations]