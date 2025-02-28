<template>
  <el-badge :value="2" class="item" type="warning">
    <div @click="thumb_up" ref="thumb" class="cir">
        <svg t="1738836886548" class="icon thumb_svg" viewBox="0 0 1167 1024" version="1.1" xmlns="http://www.w3.org/2000/svg" p-id="2814" width="200" height="200">
            <use ref="thumb_color" href="@/assets/svg/heart-fill.svg#h"  xlink:href ="#h" x ="5" y = "5"/>
        </svg>
     </div>
  </el-badge>
</template>
<script setup>
import {ref, toRefs ,onMounted,getCurrentInstance} from 'vue'
const thump_lock = ref(true) 
const ins = ref()
onMounted(()=>{
  ins.value = getCurrentInstance()
})
function thumb_up(article_id){
  const heart = ins.value.refs.thumb_color;
  const thumb = ins.value.refs.thumb;
  if(thump_lock.value == true){
    heart.classList.remove("thumb_svg")
    heart.classList.add("thumb_svg_tup")
    thump_lock.value = !thump_lock.value
  }else{
    heart.classList.add("thumb_svg")
    heart.classList.remove("thumb_svg_tup")
    thump_lock.value = !thump_lock.value
  }
   let burst = new mojs.Burst({
        // 爆炸范围
        radius: { 0: 50 },
        // 动画挂载父元素，默认改在到body上
        parent: thumb,
        // 动画延时函数
        easing: mojs.easing.bezier(0.1, 1, 0.3, 1),
        // 动画延时时间
        duration: 1500,
        // 动画等待时间
        delay: 300,
        // 扩散的粒子配置
        children: {
          duration: 750,
          // 随机数范围爆炸
          radius: { 0: "rand(5,25)" },
          shape: ["circle", "rect", "polygon"],
          // 粒子可选色
          fill: [
            "#1abc9c",
            "#2ecc71",
            "#00cec9",
            "#3498db",
            "#9b59b6",
            "#fdcb6e",
            "#f1c40f",
            "#e67e22",
            "#e74c3c",
            "#e84393",
          ],
          degreeShift: "rand(-90, 90)",
          delay: "stagger(0, 40)",
        },
        // 透明度
        opacity: 0.6,
        // 生成粒子数量
        count: 20,
      });
    new mojs.Timeline().add(burst).play();
    };
</script>
<style scoped>
.thumb_svg:hover{
}
.thumb_svg{ fill: #dbdbdb;}
.thumb_svg_tup{fill: red !important;}
.cir{
        position: relative;
        width: 65px;
        height:65px;
        border-radius: 50%;
        margin-bottom: 18px;        
        background-color: rgb(255, 255, 255);
        display: flex;
        align-items: center;
        justify-content: center;
    }
.icon{
      width: 45%;
      height: auto;
}
</style>