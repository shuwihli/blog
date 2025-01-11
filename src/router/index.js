import { createRouter, createWebHistory } from 'vue-router'
import Login from '../views/Login/Login.vue'
import isAuthenticated from '../api/isAuth'
import PersonalData from '../views//UserOption/PersonalData.vue'
import UserAccount from '../views/UserOption/UserAccount.vue'
import article from '../views/article/article.vue';
const router = createRouter({
  history: createWebHistory(),
  routes: [
    { 
      path: '/lo',
      name: 'Login',
      component: Login,
    },
    { 
      path: '/article',
      component:()=>import('../views/article/index.vue'),
      children:[
        {
          path: '',
          name: 'list',
          component: article,
        },
        {
          path: 'editor',
          name: 'editor',
          component:()=>import('../views/article/writeArticle.vue'),
        },
      ]
    },
      
    {
      path: '/article_detail',
      name: 'article_detail',
      component:()=>import('../views/article/articlaDetail.vue'),
      props:true
    },
    {
      path:"/",
      name:"pd",
      component:()=>import('../views/UserOption/UserDetail.vue'),
      // 配置对应的子路由
      children: [
        {
         path: 'pd', 
         name: 'PersonalData',
         component: PersonalData 
        },
        { 
          path: 'ua',
          name: 'UserAccount  ',
          component: UserAccount
        }
      ]
    },
  
  ] 
})
// router.beforeEach(async (to, from, next) => {
//   try {
//     const isAuth = await isAuthenticated();
//     if (!isAuth && to.name !== 'Login') {
//       next({ name: 'Login' }); // 重定向到登录页面
//     } else {
//       // alert("登录成功"); 
//       next(); // 继续导航
//     }
//   } catch (error) {
//     console.error('Error:', error);
//     next(false); // 错误处理，中断导航
//   }
// });
  export default router