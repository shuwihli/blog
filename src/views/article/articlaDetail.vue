<template>
    <articleTem>
        <template #arttitle>
                <div class="arttitle" v-if=article.title>{{article.title}}</div>
            </template>
        <template #date>
            <div class="fs mate-item">{{article.date}}</div>
        </template>
        <template #author>
            <div class="fs mate-item">作者: {{article.nickName}}</div>
        </template>
        <!-- 文章详情页的标签展 （目前没有该功能） -->
        <!-- <template #date>
            <div class="fs mate-item">{{article.date}}</div>
        </template> -->
        <template #artcontent>
            <div class="fw artcontent" v-html="article.content"></div>
        </template>
    </articleTem>
</template>
<script setup>
import { useRouter ,useRoute} from 'vue-router';
import {getByIdArt} from '@/api/article'
import {ref} from "vue"
// 根据路由携带的文章Id进行查询
const route = useRoute();
const queryParam = route.query.id;
const id = {
    id :queryParam
}
const article = ref()
getByIdArt(id).then((res)=>{
    console.log(id)
    article.value = res.data.data
    console.table("详情页信息",res.data)
})

</script>
<!-- 标题 时间 作者 [标签] -->