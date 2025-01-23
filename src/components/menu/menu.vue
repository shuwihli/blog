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
  <!-- <el-menu-item index="1">BOT</el-menu-item> -->
    <!-- <el-menu-item index="1"><router-link  to="/Login">沸点</router-link></el-menu-item> -->
    <!-- <el-menu-item index="1">课程</el-menu-item>
    <el-menu-item index="1">直播</el-menu-item>
    <el-menu-item index="1">活动</el-menu-item>
    <el-menu-item index="1">竞赛</el-menu-item>
    <el-menu-item index="1">商城</el-menu-item>
    <el-menu-item index="1">APP</el-menu-item> -->
    <!-- <el-menu-item index="1" style="margin-right: 30px;">插件</el-menu-item> -->
    <el-menu-item index="1">
        <el-button class="bt-write"  @click="write">发布文章</el-button>
    </el-menu-item>
    <el-menu-item index="1">
        <div class="wall"></div>
    </el-menu-item>
    <el-form :inline="true" :model="formInline" class="" >
         <el-input v-model="formInline.user" placeholder="search by name" clearable />
    </el-form>
    <el-menu-item index="1">
        <el-icon><BellFilled /></el-icon>       
    </el-menu-item>
    <!--用户头像  点击该头像出现下拉列表，显示用户相关操作--> 
    <el-menu-item index="1" >
        <el-avatar :size="50" v-bind:src="avatarUrl" style="position:relative;" @click="openView"/>
        <div v-if="view" @click="openView" style="z-index: 2;">
                <div class="user-actions">
                    <el-row :span="24" justify="center" style="height: 15%;" @click="UserEditing">
                            <el-col :span="8" >
                                <el-avatar :size="55" v-bind:src="avatarUrl" style="position:relative;"/>
                            </el-col>
                            <el-col :span="12" style="display: flex;flex-direction: column;justify-content: center;align-items:flex-start;text-align: center;">
                                <h3  style="height:20px;display: flex;align-items:center;" >{{userInfo.nickName}}</h3>
                                <h5 style="height: 20px;display: flex;align-items: center;">Love you</h5>
                            </el-col>
                    </el-row>
                    <el-row> 
                        <el-col :span="24" style="margin-top: 18px;">
                        </el-col>
                    </el-row>
                    <!-- <el-row span="24">
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
                    </el-row> -->
                    <el-row class="userfoot">
                        <!-- <el-col :span="12" style="text-align:center;">设置</el-col> -->
                        <el-col :span="24" style="margin-left:22px; text-align:left;" @click="userlogout()">退出登录</el-col>
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
import getUserInfo from "@/api/SystemApi/userInfo" 
import { ref } from 'vue';
onBeforeMount(()=>{
    const loginUser = getUserInfo(userInfo)
    avatarUrl.value = loginUser.avatar
})
const router = useRouter();
// let username = ref("默认用户")
let PopUpsRef = ref();
let popMessage =ref();
const userInfo =ref()
const avatarUrl = ref() //头像地址
const view = ref()
const formInline = reactive({
  user: '',
  region: '',
  date: '',
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
const openView = function (){
    view.value?view.value = false:view.value = true
}
// function checkProtocolAndIP(str) {
//       try {
//       new URL(str);
//       return true;
//     } catch (e) {
//       return false;
//     }
// }
// function getUserInfo(){ // 从cookie中获取用户存储的信息
//     var cookie = document.cookie.replace(
//      /(?:(?:^|.*;\s*)userInfo\s*\=\s*([^;]*).*$)|^.*$/, 
//      "$1",
//     );
//     if(cookie){
//         userInfo.value = JSON.parse(BaseDecode(cookie))
//         console.log(userInfo.value);
//         if(checkProtocolAndIP(userInfo.value.avatar)){
//             const temp = ref(userInfo.value.avatar)
//             avatarUrl.value = JSON.stringify(temp.value).slice(1,-1)//我也不知道我写了啥，但反正能用
//             console.log(avatarUrl.value);
            
//         }else{
//             const temp = ref("http://127.0.0.1:9090/" + userInfo.value.avatar)
//             avatarUrl.value = JSON.stringify(temp.value).slice(1,-1)//我也不知道我写了啥，但反正能用
//         }
//     }
//     return "没有该cookie值"
// }
// 确认登录弹窗
function userlogout(){
    PopUpsRef.value.changeView()
}
</script>