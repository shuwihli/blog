<template>
  <HorizontalNav/>

    <!-- <source src="./music.mp3" type="audio/mpeg" /> -->
  <el-button @click="inversal">开始播放{{ play }}</el-button>
  <kinesis-container :audio="AudUrl" :playAudio=play >
    <kinesis-audio  :strength="10" type="scale">
        <kinesis-element :strength="10" type="rotate" tag="main">
         
        </kinesis-element>
    </kinesis-audio>
    <kinesis-audio  :strength="100" type="scale">
         
    </kinesis-audio>
  </kinesis-container>
    
  <kinesis-container class="container center">
    <kinesis-element :key="index" :strength="50" v-for="(char, index) in displayedText">
      <span class="welText">
        {{ char }}
      </span>
    </kinesis-element>
  </kinesis-container>
</template>

<script setup>
import AudUrl from '/music.mp3'
import { ref, onMounted ,onUnmounted} from "vue";
// 播放器部分
    const fullText = ref("你好 我是21世纪的大");
    const displayedText = ref("");
    let intervalId = null;
    onMounted(()=>{
      startTypingAnimation(fullText);
    })
    let play = ref(false)
    function inversal(){
      play.value = !play.value
    } 
    /**params text:ref<string> 要展示的文本内容
     *  逐字显示动画方法 
     *  */
    const startTypingAnimation = (text) => {
      displayedText.value = ""
      let index = 0;
      intervalId = setInterval(() => {
        if (index < text.value.length) {
          displayedText.value += text.value[index];
          index++;
        } else {
          clearInterval(intervalId);
        }
      }, 200);
    };
    // 在组件挂载时启动动画
    // onMounted(() => {
    // });
    // 在组件卸载时清理定时器
    onUnmounted(() => {
      if (intervalId) {
        clearInterval(intervalId);
      }
    });
</script>

<style scoped>
.player{
  position: relative;
  max-width: 300px;
  max-height: 75px;
  place-self:center;
  place-items: center;
  place-content: center;
  width: 48vw;
  height: 10vw;
  background-color: rgb(231, 231, 231);
  border-radius: 8px;
}

.container {
  width: 50vw;
  max-width: 100vw;
  min-width: 20vw;
  height:40vh ;
  border-radius: 20px;
  display: flex;
  justify-content: center;
  align-items: center;
  background-color: rgba(255, 255, 255, 0.9);
}
.welText{
  font-size: 3rem; 
}
.under::after {
  content: "";
  animation-duration: 0.8s;
  animation-name: slidein;
  width: 32px;
  height: 5px;
  background-color: rgb(0, 0, 0);
  display: inline-block;
  position: absolute;
  left: 0;
  bottom: -8px;
  letter-spacing: 10px;
}
</style>