import Home from './components/Home.vue'
import Categories from './screens/category/Categories.vue'
import AddCategory from './screens/category/AddCategory.vue'
import EditCategory from './screens/category/EditCategory.vue'

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
        }

    ]
}