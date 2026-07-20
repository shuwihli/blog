<template>
    <el-menu
    :default-active="activeIndex"
    class="el-menu"
    mode="horizontal"
    text-color="#000"
    @select="handleSelect"
  >
 
  <el-menu-item index="1"><strong>LOGO</strong></el-menu-item>
  <el-menu-item index="1" @click="goArticle()" >首页</el-menu-item>
  <el-menu-item index="1">BOT</el-menu-item>
    <el-menu-item index="1"><router-link  to="/Login">沸点</router-link></el-menu-item>
    <el-menu-item index="1">课程</el-menu-item>
    <el-menu-item index="1">直播</el-menu-item>
    <el-menu-item index="1">活动</el-menu-item>
    <el-menu-item index="1">竞赛</el-menu-item>
    <el-menu-item index="1">商城</el-menu-item>
    <el-menu-item index="1">APP</el-menu-item>
    <el-menu-item index="1" style="margin-right: 30px;">插件</el-menu-item>
    <el-form :inline="true" :model="formInline" >
         <el-input v-model="formInline.user" placeholder="Approved by" clearable />
    </el-form>

    <el-menu-item index="1">
        <el-button>
            <span style="position: relative;">创作者中心</span>
            <div class="operation-dropdown">
                <el-button style="margin-top: auto;" @click="write">写文章!!!首先我们跳个转</el-button>
            </div>
            <el-icon><ArrowDownBold /></el-icon>
        </el-button>
    </el-menu-item>
    <el-menu-item index="1">
            <svg width="25" height="26" viewBox="0 0 25 26" fill="none" xmlns="http://www.w3.org/2000/svg">
            <path d="M14.5496 1.85159C12.9816 0.94629 11.0497 0.94629 9.48166 1.85159L3.6278 5.23131C2.05978 6.13661 1.09383 7.80968 1.09383 9.62028V16.3797C1.09383 18.1903 2.05978 19.8634 3.6278 20.7687L9.48166 24.1484C11.0497 25.0537 12.9816 25.0537 14.5496 24.1484L20.4034 20.7687C21.9715 19.8634 22.9374 18.1903 22.9374 16.3797V9.62028C22.9374 7.80968 21.9715 6.13661 20.4034 5.23131L14.5496 1.85159Z" fill="#33375E" stroke="url(#paint0_linear_17431_150592)" stroke-width="1.05897"/>
            <path fill-rule="evenodd" clip-rule="evenodd" d="M6.81691 7.01512L9.45774 7.01512C9.55835 7.01512 9.65238 7.06513 9.70864 7.14855L11.8039 10.2554C11.9241 10.4336 12.1866 10.4332 12.3062 10.2547L14.3881 7.14589C14.4443 7.06204 14.5385 7.01172 14.6394 7.01172H17.1972C17.4448 7.01172 17.5876 7.29288 17.4416 7.49279L12.2877 14.5479C12.1674 14.7126 11.9218 14.7135 11.8004 14.5495L6.57391 7.49781C6.42591 7.29813 6.56839 7.01512 6.81691 7.01512ZM13.5443 20.1643H10.6408C10.5436 20.1643 10.4524 20.1176 10.3957 20.0388L4.0568 11.2267C3.99375 11.139 3.98233 11.0242 4.02686 10.9256L5.16013 8.41552C5.2559 8.20341 5.54492 8.17353 5.68109 8.36166L11.7902 16.8019C11.9118 16.9699 12.1629 16.9679 12.2826 16.798L18.2545 8.32346C18.3877 8.13446 18.6746 8.15785 18.7745 8.36584L20.0033 10.9253C20.0507 11.0239 20.041 11.1406 19.978 11.2303L13.7925 20.0352C13.7357 20.1161 13.643 20.1643 13.5443 20.1643Z" fill="url(#paint1_linear_17431_150592)"/>
            <path d="M9.45774 7.01512V7.08236H9.45774L9.45774 7.01512ZM6.81691 7.01512V6.94789V7.01512ZM9.70864 7.14855L9.76439 7.11095V7.11095L9.70864 7.14855ZM11.8039 10.2554L11.7482 10.293H11.7482L11.8039 10.2554ZM12.3062 10.2547L12.2503 10.2173L12.3062 10.2547ZM14.3881 7.14589L14.444 7.1833V7.1833L14.3881 7.14589ZM17.4416 7.49279L17.3873 7.45313V7.45313L17.4416 7.49279ZM12.2877 14.5479L12.342 14.5876L12.2877 14.5479ZM11.8004 14.5495L11.8544 14.5095V14.5095L11.8004 14.5495ZM6.57391 7.49781L6.62792 7.45777L6.62792 7.45777L6.57391 7.49781ZM10.3957 20.0388L10.4503 19.9995L10.3957 20.0388ZM4.0568 11.2267L4.00222 11.2659H4.00222L4.0568 11.2267ZM4.02686 10.9256L3.96558 10.898H3.96558L4.02686 10.9256ZM5.16013 8.41552L5.09885 8.38785L5.16013 8.41552ZM5.68109 8.36166L5.62662 8.40108V8.40108L5.68109 8.36166ZM11.7902 16.8019L11.7357 16.8413L11.7902 16.8019ZM12.2826 16.798L12.2277 16.7592L12.2826 16.798ZM18.2545 8.32346L18.1995 8.28473L18.2545 8.32346ZM18.7745 8.36584L18.7139 8.39494V8.39494L18.7745 8.36584ZM20.0033 10.9253L20.0639 10.8962V10.8962L20.0033 10.9253ZM19.978 11.2303L20.033 11.2689L20.033 11.2689L19.978 11.2303ZM13.7925 20.0352L13.8475 20.0739L13.7925 20.0352ZM9.45774 6.94789L6.81691 6.94789V7.08236L9.45774 7.08236V6.94789ZM9.76439 7.11095C9.69563 7.00901 9.5807 6.94789 9.45774 6.94789L9.45774 7.08236C9.53599 7.08236 9.60914 7.12125 9.6529 7.18614L9.76439 7.11095ZM11.8597 10.2178L9.76439 7.11095L9.6529 7.18614L11.7482 10.293L11.8597 10.2178ZM12.2503 10.2173C12.1573 10.3561 11.9532 10.3565 11.8597 10.2178L11.7482 10.293C11.8951 10.5108 12.2159 10.5104 12.3621 10.2921L12.2503 10.2173ZM14.3322 7.10847L12.2503 10.2173L12.3621 10.2921L14.444 7.1833L14.3322 7.10847ZM14.6394 6.94448C14.5161 6.94448 14.4009 7.00599 14.3322 7.10848L14.444 7.1833C14.4876 7.11809 14.5609 7.07896 14.6394 7.07896V6.94448ZM17.1972 6.94448H14.6394V7.07896H17.1972V6.94448ZM17.4959 7.53245C17.6744 7.2881 17.4998 6.94448 17.1972 6.94448V7.07896C17.3898 7.07896 17.5009 7.29766 17.3873 7.45313L17.4959 7.53245ZM12.342 14.5876L17.4959 7.53245L17.3873 7.45313L12.2335 14.5082L12.342 14.5876ZM11.7463 14.5896C11.8948 14.7899 12.195 14.7889 12.342 14.5876L12.2335 14.5082C12.1399 14.6363 11.9489 14.637 11.8544 14.5095L11.7463 14.5896ZM6.51989 7.53785L11.7463 14.5896L11.8544 14.5095L6.62792 7.45777L6.51989 7.53785ZM6.81691 6.94789C6.51314 6.94789 6.33902 7.29381 6.51989 7.53785L6.62792 7.45777C6.51281 7.30245 6.62364 7.08236 6.81691 7.08236V6.94789ZM10.6408 20.2315H13.5443V20.097H10.6408V20.2315ZM10.3412 20.078C10.4105 20.1744 10.522 20.2315 10.6408 20.2315V20.097C10.5652 20.097 10.4944 20.0607 10.4503 19.9995L10.3412 20.078ZM4.00222 11.2659L10.3412 20.078L10.4503 19.9995L4.11138 11.1874L4.00222 11.2659ZM3.96558 10.898C3.91119 11.0184 3.92509 11.1587 4.00222 11.2659L4.11138 11.1874C4.0624 11.1193 4.05348 11.0301 4.08814 10.9533L3.96558 10.898ZM5.09885 8.38785L3.96558 10.898L4.08814 10.9533L5.22141 8.44319L5.09885 8.38785ZM5.73555 8.32224C5.56891 8.092 5.21574 8.12896 5.09885 8.38785L5.22141 8.44319C5.29606 8.27786 5.52093 8.25506 5.62662 8.40108L5.73555 8.32224ZM11.8447 16.7625L5.73555 8.32224L5.62662 8.40108L11.7357 16.8413L11.8447 16.7625ZM12.2277 16.7592C12.1344 16.8916 11.9391 16.8929 11.8447 16.7625L11.7357 16.8413C11.8845 17.0469 12.1914 17.0441 12.3376 16.8367L12.2277 16.7592ZM18.1995 8.28473L12.2277 16.7592L12.3376 16.8367L18.3095 8.3622L18.1995 8.28473ZM18.8351 8.33674C18.7129 8.08218 18.3621 8.05403 18.1995 8.28473L18.3095 8.3622C18.4133 8.21489 18.6364 8.23351 18.7139 8.39494L18.8351 8.33674ZM20.0639 10.8962L18.8351 8.33674L18.7139 8.39494L19.9427 10.9544L20.0639 10.8962ZM20.033 11.2689C20.11 11.1594 20.1219 11.0168 20.0639 10.8962L19.9427 10.9544C19.9795 11.031 19.972 11.1218 19.9229 11.1916L20.033 11.2689ZM13.8475 20.0739L20.033 11.2689L19.9229 11.1916L13.7375 19.9966L13.8475 20.0739ZM13.5443 20.2315C13.665 20.2315 13.7781 20.1726 13.8475 20.0739L13.7375 19.9966C13.6932 20.0595 13.6211 20.097 13.5443 20.097V20.2315Z" fill="white"/>
            <defs>
            <linearGradient id="paint0_linear_17431_150592" x1="12.0156" y1="1" x2="12.0156" y2="25" gradientUnits="userSpaceOnUse">
            <stop stop-color="#E9D7BB"/>
            <stop offset="0.479167" stop-color="#FDEFBA"/>
            <stop offset="1" stop-color="#ECD7B7"/>
            </linearGradient>
            <linearGradient id="paint1_linear_17431_150592" x1="12.0171" y1="19.6483" x2="12.0171" y2="6.42187" gradientUnits="userSpaceOnUse">
            <stop stop-color="#E4C087"/>
            <stop offset="1" stop-color="#F6EAD1"/>
            </linearGradient>
            </defs>
            </svg>
        <span>会员</span> 
    </el-menu-item>
    <el-menu-item index="1">
        <el-icon><BellFilled /></el-icon>       
    </el-menu-item>
    <!--用户头像  点击该头像出现下拉列表，显示用户相关操作--> 
    <el-menu-item index="1" >
        <div>
                <div class="user-actions">
                    <el-row :span="24" justify="center" style="height: 15%;" @click="UserEditing">
                            <el-col :span="8" >
                                <el-avatar :size="60" v-bind:src="avatarUrl" style="position:relative;"/>
                            </el-col>
                            <el-col :span="12" style="display: flex;flex-direction: column;justify-content: center;align-items:flex-start;text-align: center;">
                                <h3  style="height:20px;display: flex;align-items:center;" >{{userInfo.nickName}}</h3>
                                <h5 style="height: 20px;display: flex;align-items: center;">矿石：xxk</h5>
                            </el-col>
                    </el-row>
                    <el-row> 
                        <el-col :span="24" style="margin: 10px;">
                        </el-col>
                    </el-row>
                    <el-row :span="24" justify="center" style="height: 10%;">
                        <el-col :span="24">
                            <img style="width: 100%;height: 50px;object-fit: cover;" v-bind:src=backurl  alt="" >
                        </el-col>
                    </el-row>
                    <el-row :span="24" justify="center" align="center" style="margin: auto;height: 15%;">
                        <el-col :span="8" style="text-align: center;">
                            <div style="height: 25px;font-size: 14px;" >1</div>
                            <span>关注</span>
                        </el-col>
                        <el-col :span="8" style="text-align: center;">
                            <div style="height: 25px;">1</div>
                            <span>点赞</span>
                        </el-col>
                        <el-col :span="8" style="text-align: center;"   >
                            <div style="height: 25px;">1</div>
                            <span>动态</span>
                        </el-col>
                    </el-row>
                    <el-row style="text-align: center;height: 50%;font-size: 16px;">
                        <el-col :span="12" style="height: 10px;"><span >我的主页</span></el-col>
                        <el-col :span="12" style="height: 10px;"><span >我的主页</span></el-col>
                        <el-col :span="12" style="height: 10px;"><span >我的主页</span></el-col>
                        <el-col :span="12" style="height: 10px;"><span >我的主页</span></el-col>
                        <el-col :span="12" style="height: 10px;"><span >我的主页</span></el-col>
                        <el-col :span="12" style="height: 10px;"><span >我的主页</span></el-col>
                        <el-col :span="12" style="height: 10px;"><span >我的主页</span></el-col>
                        <el-col :span="12" style="height: 10px;"><span >我的主页</span></el-col>
                    </el-row>
                    <el-row>
                        <el-col :span="12" style="text-align: left;">设置</el-col>
                        <el-col :span="12" style="text-align: right;" @click="userlogout()">退出登录</el-col>
                    </el-row>
                </div>    
        </div> 
    </el-menu-item>
</el-menu>
<PopUps ref="PopUpsRef" id="pop">
    <template #title>
        <h1 id="popusWindow" v-text="popMessage"></h1>
        <button @click="confirmLogout(1)">确认</button>
        <button @click="confirmLogout(0)">我不要</button>
    </template>
</PopUps>
</template>
<style scoped>
/* 细节阴影不能少 */

</style>
<script setup>
import { reactive, toRefs,onMounted ,onBeforeMount} from 'vue'
import { useRouter } from 'vue-router';
import {getLogin, logout} from '@/api/SystemApi/Login'
import { ref } from 'vue';
import {BaseEncode,BaseDecode} from '@/utils/BaseUtil'
onBeforeMount(()=>{
    getUserInfo()
})
const router = useRouter();
let username = ref("默认用户")
let PopUpsRef = ref();
let popMessage =ref();
const userInfo =ref()
const avatarUrl = ref() //头像地址
const backurl = ref("http://127.0.0.1:9090/987f0ab3-e612-4fd7-98a8-2ee64b8e2f0f.webp") // 头像下边横条的背景图
const formInline = reactive({
  user: '',
  region: '',
  date: '',
})
const form = reactive({
  name: '',
  region: '',
  date1: '',
  date2: '',
  delivery: false,
  type: [],
  resource: '',
  desc: '',
})
// const state = ref({
//     // circleUrl: "src/assets/image/wallhaven-zyge7y.webp", 
//     avaterUrl:"http://9090/"+userInfo.value.avatar
// })
// const { circleUrl, squareUrl } = toRefs(state)
function goArticle() {
    router.push('/article');
  }
function UserEditing(){
    router.push('/pd');
}
function write(){
    router.push('article/editor');
}
function getUserInfo(){ // 从cookie中获取用户存储的信息
    var cookie = document.cookie.replace(
     /(?:(?:^|.*;\s*)userInfo\s*\=\s*([^;]*).*$)|^.*$/,
     "$1",
    );
    userInfo.value = JSON.parse(BaseDecode(cookie))
    const temp = ref("http://127.0.0.1:9090/" + userInfo.value.avatar)
    avatarUrl.value = JSON.stringify(temp.value).slice(1,-1)//我也不知道我写了啥，但反正能用
}
function confirmLogout(confirm){
    if(confirm){
        PopUpsRef.value.changeView()
        logout()
    }
    else{
        PopUpsRef.value.changeView()
    }
    return new Boolean(confirm)
}
// 确认登录弹窗
function userlogout(){
    PopUpsRef.value.changeView()
    popMessage.value = "你确认退出当前用户吗？"
    //退出登录后跳转到登录页面 而且现在为什么总是感觉一卡一卡的
}


</script>