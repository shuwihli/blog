<!-- 登录表单页 -->
<template>
      <div class="login-new-wrap">
        <div class="content">
         <PopUps ref="PopUpsRef">
            <template #title>
                <h1 id="popusWindow" v-text="popMessage"></h1>
            </template>
         </PopUps>
         <div class="login-form-l">
          <div class="login-body">
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
                  <li class=" fs regist-link">立即注册</li>
                </ul>
              </div>
            </div>
          </div>
          <div class="login-form-r"></div>
        </div>
      </div>
  <div class="footer-2024"></div>
 
</template>
<script setup>
import { useRouter } from 'vue-router'; 
import { ref } from 'vue'
import {Authentication} from '@/api/SystemApi/Login'
import { Base64 } from 'js-base64'; // base64.js
let PopUpsRef = ref()
let popMessage = ref()

const router = useRouter();
 let loginRequest=ref({
    userName:"",
    password:""
    })
    const userInfo = ref({avatar:"",nickName:"",userId:""})
function setCookie(user) // 设置cookie
{
  console.log(userInfo.value);
  userInfo.value.avatar = user.avatar
  userInfo.value.nickName = user.nickName
  userInfo.value.userId = user.id
  userInfo.value = JSON.stringify(userInfo.value)
  document.cookie="userInfo="+Base64.encode(userInfo.value)+"; path=/";
}
// 调用登录接口
const login = function(){
  Authentication(loginRequest.value).then((res)=>{
    if(res.data.code == "200"){
        const user = res.data.data.authentication.principal; // 登录用户的信息   
        LoginSuccess();
        setCookie(user) // 登 陆成功后设置cookie，用来存储用户相关信息 （实体类loguser全部信息）
    }
  }).catch((err)=>{
    alert(err); // 登录异常信息 后续用组件弹出来或者怎样的
    LoginError()
  })
}
const LoginSuccess = function(){  
  popMessage.value = "登陆成功"
  PopUpsRef.value.view = true
  setTimeout(()=>{
    router.push("article")
    PopUpsRef.value.view = false
  },1000)

}
const LoginError = function(){
  popMessage.value = "登陆失败"
  PopUpsRef.value.view = true
  setTimeout(()=>{
    PopUpsRef.value.view = false
  },1000)
}
</script>
<style>


</style>
