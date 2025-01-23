<template>
    <articleTem v-if="article">
        <template #arttitle>
            <div class="arttitle" v-if="article.title">{{ article.title }}</div>
            </template>
        <template #date>
            <div class="fs mate-item">发布时间：{{article.date}}</div>
        </template>
        <template #author>
            <div class="fs mate-item">作者: {{article.nickName}}</div>
        </template>
        <template #artcontent>
            <div class="fw artcontent" v-html="article.content"></div>
        </template>
        <!-- 评论插槽 -->
        <template #comment>

        </template>
        <template #avatar>
            <div class="aside-container">
                <div class="aside-avater">
                    <el-avatar shape="circle" :size="100" :fit="cover" :src="article.avatar" />
                </div>
                <div class="a-auther">
                    <div class="fnw">{{ article.nickName }}</div>
                    <div class="introduction fnm">你好，我是測試簡介</div>
                </div>
            </div>
        </template>
    </articleTem>
</template>
<script setup>
import { useRouter ,useRoute} from 'vue-router';
import {getByIdArt} from '@/api/article'
import {checkProtocolAndIP} from "@/api/SystemApi/userInfo"
import {ref,onMounted} from "vue"
// 根据路由携带的文章Id进行查询
const route = useRoute();
const queryParam = route.query.id;
const url = ref()
const id = {
    id :queryParam
}
const article = ref()
onMounted(()=>{
    getByIdArt(id).then((res)=>{
    article.value = res.data.data
    if(!checkProtocolAndIP(article.value.avatar)){
        article.value.avatar = "http://127.0.0.1:9090/"+article.value.avatar
        console.log(article.value.avatar);
    }
})
    
})

</script>
<!-- 标题 时间 作者 [标签] -->