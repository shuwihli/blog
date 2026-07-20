<!-- // 文章详情模板 -->
<template>
    <div class="ad-containrt">
        <div class="articletem">
            <slot name="arttitle">
                <div class="arttitle">默认文章标题</div>
            </slot>
            <div class="mate">
                <slot name="author">
                    <div class="fs mate-item">作者</div>
                </slot>
                <slot name="date">
                    <div class="fs mate-item">日期</div>
                </slot>
                <!-- <slot name="tag">
                    <div class="fs mate-item">分类</div>
                </slot>   -->
            </div>
            <div>
                <slot name="artcontent">
                    <div>默认文章内容？不是，文章去那了？这谁发的文章。超级管理员快点让他赔钱</div>
                </slot>    
            </div>
        </div>
            <div class="aside">
                <slot name="avatar">
                    <el-avatar shape="circle" :size="100" :fit="fit" :src="url" />
                </slot>
            </div>
        <div class="container-comment">
            <slot name="comment"></slot>
        </div>
    </div>
</template>

<style>
</style>
<script setup>

</script>