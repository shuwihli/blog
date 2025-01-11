<!-- // 文章详情模板 -->
<template>
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
        <slot name="artcontent">
            <div class="artcontent">Lorem ipsum dolor sit amet consectetur adipisicing elit. Fugiat, commodi ratione iste eligendi deleniti eaque dignissimos tempore officiis optio corrupti vel minus quisquam, atque eius reprehenderit incidunt pariatur unde quos.</div>
            <div>sdsadas</div>
        </slot>     
    </div>
    
</template>

<style>

</style>
<script setup>

</script>