<template>
  <HorizontalNav/>
<!-- <div class="common-layout"> -->
      <!-- <el-aside class="aside"></el-aside> -->
      <!-- <div class="main-container"> -->
            <div class="content_list" v-for="item in items.value" :key="item.id" @click="article_detail(item.id)">
              <div class="list_left">
                <div class="fw" style="margin-bottom:8px;font-weight: bolder">{{ item.title}}</div>
                <div class="fw" style="margin-bottom:8px;font-weight: bolder" v-if="!item.title">默认标题</div>
                <!-- 字符串截取，显示固定量的文本 -->
                <div class="preContent">{{ stripHTML(item.content)}}</div>
                    <ul style="display:flex ;list-style: none;gap: 2vw;margin-top:8px">
                      <li style="border-right: 1px solid rgba(0,0,0,0.2);padding-right: 1vw;"></li>
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
                <div class="list_right">
                  <img class="list_img" v-if="item.cover" :src="item.cover[0]" alt="">
                  <img class="list_img" v-if="!item.cover" src="" alt="文章没有图片">
               <!-- </div> -->
            <!-- </div> -->
              </div>
  </div>

</template>
<script setup>
import { reactive,ref, toRefs ,onMounted} from 'vue'
import {listart,getHeat} from '@/api/article'
import { useRoute, useRouter } from 'vue-router'
const items  = reactive([])
const cov = ref()
const router = useRouter()
function getData(){
  const imgre = "http.+?(jpeg|bpm|png|webp|jpg|gif)"
  listart().then(res=>{
    // 文章封面 - 利用正则表达式取出图片路径 并做为属性使用Object.assign添加到res.data中
    for(let i =0;i<res.data.length;i++){
      const url = res.data[i].content.match(imgre)
      Object.assign(res.data[i],{cover:url})
    }
    items.value = res.data
  })
}
onMounted(()=>{
  getHeat()
  getData()
})
// 跳转详情页
//在新页面打开文章，传输文章编号做为参数
function article_detail(id) {
  const route = router.resolve({
    path: '/article_detail',
    query: { id: id }
  })
  window.open(route.href, '_blank')
}
function stripHTML(html) { // 将html标签转换为纯文本内容
  const temp = document.createElement('div');
  temp.innerHTML = html;
  return temp.textContent || temp.innerText || '';
}
// const { circleUrl, squareUrl, sizeList } = toRefs(state)
</script>
