<!-- 登录表单页 -->
<template>

      <div v-loading="loading" class="login-new-wrap">
        <div class="contentform">
         <PopUps ref="PopUpsRef">
            <template #title>
                <h1 id="popusWindow" v-text="popMessage"></h1>
            </template>
         </PopUps>
         <div class="title-form f-logo">
          咩咩小羊
         </div>
         <div class="login-form-l">
          <div id="login-f" :class="{slideoutblurredleft:disabled}" class="login-body"> 
              <div class="form-login-type-toggle">
                <span class="fw">密码登录</span>
                <span class="fw">短信登陆</span>
              </div> 
              <div class="login-bottom">
                  <el-input class="login-input" v-model="loginRequest.userName"  placeholder="手机号/邮箱/账号" /><!--- 破组件 垃圾到爆炸-->
                  <el-input class="login-input" v-model="loginRequest.password"  placeholder="密码" />
                  <div class="item-fore1 fs">忘记密码</div>
                  <el-button class="login-input" @click="login">登录</el-button>
              </div>
              <div class="coagent">
                  <ul style="width: 100%;">
                    <li>
                      <a class="fs" href=""><el-icon style="margin-right:3px ;"><CoffeeCup /></el-icon>完全没有赞助</a>
                      <span class="line"></span>
                    </li>
                    <li>  
                      <a class="fs" href=""><el-icon style="margin-right:3px ;"><NoSmoking /></el-icon>完全没有赞助</a>
                    </li>
                  <li  @click="dialogTableVisible = true" class="fs regist-link">立即注册</li>
                </ul>
              </div>
            </div>
            <el-dialog style="padding: 0 !important;display: flex;justify-content: center;" v-model="dialogTableVisible" center=true width="600">
              <div class="form-login-type-toggle">
                <span class="form-login-type-toggle fw">注册到小羊</span>
              </div> 
              <el-form id="sign-f" class="signform" v-model="signRequest" :rules="rules">
              <div class="login-bottom" >
                  <el-input class="login-input" validate: v-model="signRequest.userName"  placeholder="登录用户名" />
                  <el-input class="login-input" v-model="signRequest.nickName"  placeholder="展示昵称" />
                  <el-input class="login-input" v-model="signRequest.password"  placeholder="密码" />
                  <el-button type="primary" class="l  ogin-input" @click="sign(signRequest)">注册用户</el-button>
              </div>
              </el-form>
            </el-dialog>
          </div>
          <div class="login-form-r">
            <vue-qrcode 
              :value="qrurl" 
              :width=qrwidth
              @scan-success="cli()"
            ></vue-qrcode>
            <!-- <img class="qr" src="/src/assets/image/QR.png" alt=""> -->
            <div class="lf-foot"></div>
          </div>
        </div>
      </div>
  <div class="footer-2024"></div>
</template>
<script setup>
import { reactive, ref,onMounted} from 'vue'
import {Authentication,signup,wxlogin} from '@/api/SystemApi/Login'
import { Base64 } from 'js-base64'; // base64.js

import router from '@/router';
const qrwidth = ref(290) 
// urlEncode
const qrurl = ref("")
const sessionId = ref("");
onMounted(()=>{
    wxlogin().then((res)=>{
    sessionId.value = res.data.data
    const key = Object.keys(res.data.data)[0]; // 获取第一个键
    const value = Object.values(res.data.data)[0]; // 获取第一个键
    qrurl.value = value 
    console.log("值:", value);
    const url = `ws://127.0.0.1:9090/wx/socket/sid="${key}`
    var ws = new WebSocket(url);
    ws.onmessage = function(e) {
      const json = JSON.parse(e.data)      
      setwxCookie(json) // setCookie
      PopUpsRef.value.open()// 打开登录成功提示窗口
    }
  })
})

let popMessage = ref()
let PopUpsRef = ref()
const loading = ref(false)
let disabled = ref(false)
const dialogTableVisible = ref(false)
let loginRequest=ref({
    userName:"",
    password:""
    })
const signRequest = ref({
  "userName":"",
  "nickName":"",
  "password":"",
  "avatar":"default.jpeg"
})
const sign = function() {
  if (!signRequest.value.userName) {
    alert("输入账户");
  } else if (!signRequest.value.nickName) {
    alert("输入昵称");
  } else if (!signRequest.value.password) {
    alert("输入密码");
  } else {
    signup(signRequest.value).then((res) => 
    {
      console.log(res.data.mes);
      if(res.data.mes == "用户名已被占用!"){
        PopUpsRef.value.opennhasuser()
      }else{
        PopUpsRef.value.opennsign();
        dialogTableVisible.value = false;
      }
    });
  }
};
const userInfo = ref({avatar:"",nickName:"",userId:"",username:""})
const wxUserInfo = ref({sex:"",nickName:"",city:"",headimgurl:""})
function setCookie(user,origin) // 设置cookie
{
  origin.value.avatar = user.avatar
  origin.value.nickName = user.nickName
  origin.value.username = user.username
  origin.value.userId = user.id
  origin.value = JSON.stringify(userInfo.value)
  document.cookie="userInfo="+Base64.encode(origin.value)+"; path=/";
}
function setwxCookie(user) // 设置cookie
{
  wxUserInfo.value.avatar = user.headimgurl
  wxUserInfo.value.nickName = "微信用户"+user.nickname
  wxUserInfo.value.userId = user.openid
  wxUserInfo.value = JSON.stringify(wxUserInfo.value)
  document.cookie="userInfo="+Base64.encode(wxUserInfo.value)+"; path=/";
}
// 调用登录接口
  const login = function(){
    Authentication(loginRequest.value).then((res)=>{
      loading.value = true
      if(res.data.code == "200"){
          const user = res.data.data.authentication.principal; // 登录用户的信息   
          console.log(user);
          LoginSuccess();
          setCookie(user,userInfo)// 登陆成功后设置cookie，用来存储用户相关信息 （实体类loguser全部信息）
      }else if(res.data.code == "401"){
        LoginError()
      }else{
        LoginError()
      }
    })
  }
// 登陆成功接口设置
const LoginSuccess = function(){
  setTimeout(()=>{
    loading.value = false // 取消加载动画
    PopUpsRef.value.open()// 打开登录成功提示窗口
    router.push("/article")
  },1000)
}
const LoginError = function(){
  loading.value = false // 取消加载动画
  PopUpsRef.value.openerr()// 打开登录失败提示窗口
  cUserOrpass()
}
// 反馈给出账号密码是否异常的方法
const cUserOrpass = ()=>{
  let style = document.querySelector(".login-input")
  console.log(style); 
  style.classList.add("show") // 通过classList属性
  style.classList.add("focus") // 通过classList属性
  setTimeout(()=>{
    style.classList.remove("show")
  },1000)
}
</script>
<style scoped>

</style>
