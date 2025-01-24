import '@/assets/main.css'
import '@/assets/webBase(core).css'
import '@/assets/article.css'
import { createApp } from 'vue'
import app from './views/App.vue'
import ElementPlus from 'element-plus'
import 'element-plus/dist/index.css'
import router from '@/router/index'
import axios from 'axios'
import HorizontalNav  from './components/menu/menu.vue'
import PopUps  from '@/components/POP/PopUps.vue'
import * as ElementPlusIconsVue from '@element-plus/icons-vue'
import Editor from './components/editor/editor.vue'
import articleTem from '@/components/articleTem/articleTem.vue'
import { Base64 } from 'js-base64'; // base64.js
import VueQrcode from 'vue-qrcode'
import UndrawUi from 'undraw-ui'
import comment from '@/components/comment/comment.vue'
import 'undraw-ui/dist/style.css'
import 'bytemd/dist/index.css'
import { getUserInfo } from '@/utils/getCookie'
const user = createApp(app)
for (const [key, component] of Object.entries(ElementPlusIconsVue)) {
    user.component(key, component)
  }
  //  组件别名 ， 组件名称 
user.component('HorizontalNav',HorizontalNav)
user.component('editor',Editor)
user.component('PopUps',PopUps)
user.component('articleTem',articleTem)
user.component('comment',comment)
user.component('vue-qrcode',VueQrcode)
user.use(ElementPlus)
user.use(UndrawUi)
user.use(router)
user.use(getUserInfo)
user.use(Base64)
user.use(axios)
user.use(ElementPlus)
user.mount('#user') 
// initBpmn();