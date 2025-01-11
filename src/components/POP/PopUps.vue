<template>
    <div v-if="view" class="main">
       <slot name="title">
       </slot>
    </div>    
</template>
<style scoped>
    .main{
        width: 500px;
        height: 200px;
        background: rgba(235, 202, 202, 0.3);
        backdrop-filter: blur(5px);
        position: fixed;
        display: flex;
        align-self: center;
        justify-self: center;
        z-index: 1;
}
</style>
<script setup>
import { ref ,onMounted} from 'vue';
let view = ref(false);
let popMessage =ref("")


// });
function changeView(){
    view.value = view.value?false:true;
    console.log(view.value);
}
defineExpose({
    view,
    changeView,
    popMessage
});
</script>