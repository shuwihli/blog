<template>
  <HorizontalNav/><span style="color: white;">1</span>
<div class="common-layout">
    <el-container>
      <!-- <el-aside class="aside"></el-aside> -->
      <el-container class="main-container">
        <el-main class="main">
          <div class="content_list"  v-for="item in items.value" :key="item.id" @click="article_detail(item.id)">
            <div class="list_left">
              <div style="font-size: 16px;font-weight: bolder">{{ item.title }}</div>
            <!-- 字符串截取，显示固定量的文本 -->
            <div class="preContent">{{ stripHTML(item.content) }}</div>
                <ul style="display:flex ;list-style: none;gap: 2vw;">
                  <li style="border-right: 1px solid rgba(0,0,0,0.2);padding-right: 1vw;">气羊</li>
                  <li style="display: flex;align-items: center;">
                    <el-icon><View /></el-icon>
                    <span class="hot" style="margin-left: 5px">{{item.hot}}</span>    
                  </li>
                  <li class="views" style="display: flex;align-items: center;">
                    <el-icon><PictureRounded /></el-icon>
                    <span style="margin-right: 5px;">{{ item.views }}</span>
                  </li>
                </ul>
            </div>
            <img class="list_img" src="@/assets/image/mua.jpg" alt="">
          </div>
        </el-main>
      </el-container>
    <!-- <el-aside class="aside-right"></el-aside> -->
    </el-container>
  </div>
</template>
<script setup>
import { reactive, toRefs } from 'vue'
import {listart,getHeat} from '@/api/article'
import { useRoute, useRouter } from 'vue-router'
const items  = reactive([])
const formInline = reactive({
  user: '',
  region: '',
  date: '',
})
const state = reactive({
    circleUrl: "@/assets/image/wallhaven-zyge7y.webp", 
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

function getData(){
  listart().then(res=>{
    items.value = res.data
    console.table(items.value);
  })
}
getHeat()
getData()
// 跳转详情页
const router = useRouter()

//跳转 Ai写的 resolve没看懂
function article_detail(id) {
  const route = router.resolve({
    path: '/article_detail',
    query: { id: id }
  })
  window.open(route.href, '_blank')
}
function stripHTML(html) { // Ai写的，牛逼 我试试 展示纯文本做预览用的
  const temp = document.createElement('div');
  temp.innerHTML = html;
  return temp.textContent || temp.innerText || '';
}
// const { circleUrl, squareUrl, sizeList } = toRefs(state)
</script>
<style scoped>

</style>