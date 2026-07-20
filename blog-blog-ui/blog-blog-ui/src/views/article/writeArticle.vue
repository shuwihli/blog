<template>
  <div class="wa-container">
    <el-input class="w-input fw" v-model="article.title" style="width: 240px" />
    <el-button class="bt-publish fnw" @click="getHtml">  点击发布文章</el-button>
  </div>
    <editor ref="editorRef"></editor>
  </template>
  
<script setup>
  import { ref,onMounted } from 'vue'
  import editor from '@/components/editor/editor.vue'
  import {add} from '@/api/article'
  import { useRouter } from 'vue-router' 
  import {BaseEncode,BaseDecode} from '@/utils/BaseUtil' 
  const editorRef = ref()
  const edi = ref()
  const article = ref({
    id:"",title:"",content:"",userId:""
  })
  const router = useRouter()
  let html = ref()
  onMounted(() => {
    edi.value = editorRef.value;
    getUserInfo()
}); 
const getHtml = () => {
        html.value = editorRef.value.getHtml();
        const artObj = html.value // 包含html和纯文本的文章内容对象  
        article.value.content = artObj.html //文章Html版本内容
        article.value.userId = userInfo.value.userId // 发布文章的用户Id
        add(article.value).then(()=>{
            alert("文章发布成功")
            router.push("/article")
        })
}      
const userInfo = ref() 
function getUserInfo(){ // 从cookie中获取用户存储的信息 (cookie已指定位userInfo)
    var cookie = document.cookie.replace(
     /(?:(?:^|.*;\s*)userInfo\s*\=\s*([^;]*).*$)|^.*$/,
     "$1",
    );
    userInfo.value = JSON.parse(BaseDecode(cookie)) // cookie信息
    // console.log(userInfo.value.userId);
    // const temp = ref("http://127.0.0.1:9090/" + userInfo.value.avatar)
    // avatarUrl.value = JSON.stringify(temp.value).slice(1,-1)//我也不知道我写了啥，但反正能用
}

  </script>
