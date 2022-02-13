import Welcome from './components/WelcomeComponent.vue'
import Login from './components/auth/Login.vue'
import Register from './components/auth/Register.vue'
import Create from './components/CreateComponent.vue'
import AllUsers from './components/allUsersComponent.vue'
import Edit from './components/EditComponent.vue'
import UpdatedUser from './components/UpdatedUserComponent.vue'


export default {
    mode: 'history',
    base: '/',
    fallback: true,
    routes: [{
            path: '/',
            component: Welcome,
            name: 'Welcome',
            meta: { requiresAuth: true }
        },
        {
            path: '/login',
            component: Login,
            name: 'login',
            meta: { guest: true }
        },
        {
            path: '/register',
            component: Register,
            name: 'register',
            meta: { guest: true }
        },
        {
            path: '/create',
            component: Create,
            meta: { requiresAuth: true }
        },
        {
            path: '/allUsers',
            component: AllUsers,
            meta: { requiresAuth: true }
        },
        {
            path: '/updateUser',
            component: UpdatedUser,
            props: true,
            name: 'UpdatedUser'
        },
        {
            path: '/edit/:id',
            component: Edit,
            name: 'edit',
            meta: { requiresAuth: true }
        }
    ]
}