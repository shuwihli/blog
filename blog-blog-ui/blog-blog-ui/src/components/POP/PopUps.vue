<!-- <template>
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
</script> -->
<!-- <template>
  <el-button plain @click="open">Click to open the Message Box</el-button>
</template> -->
<template>
    <el-dialog
    v-model="dialogVisible"
    title="Tips"
    width="500"
    :before-close="handleClose"
  >
    <span>是否确认登出用户</span>
    <template #footer>
      <div class="dialog-footer">
        <el-button @click="dialogVisible = false">取消</el-button>
        <el-button type="primary" @click="toglogout">
          登出
        </el-button>
      </div>
    </template>
  </el-dialog>
</template>
<script lang="ts" setup>
import { ElMessage, ElMessageBox } from 'element-plus'
import { useRouter } from 'vue-router'
import { ref } from 'vue'
import Cookies from 'js-cookie'
import {getLogin, logout} from '@/api/SystemApi/Login'
const dialogVisible = ref(false)

const changeView = ()=>{
  dialogVisible.value = true
}
const toglogout=()=>{
  logout()
  Cookies.remove("userInfo")
  router.push("/lo")
  dialogVisible.value = false
}
const handleClose = (done: () => void) => {
  ElMessageBox.confirm(' you sure to close this dialog?')
    .then(() => {
      done()
    })
    .catch(() => {
      // catch error
    })
}
const router = useRouter();
const open = () => {
  ElMessage({
    message: '<h3 style="white-space:pre !important; letter-spacing:3px !important;">   登录成功   </h3>',
    dangerouslyUseHTMLString: true, //开启html支持
    type: 'success',
    plain: true,//背景
    duration:1000,
    onClose:()=>{router.push("/article")}
  })
}
const openerr = () => {
  ElMessage({
    message: '<h3 style="white-space:pre !important; letter-spacing:3px !important;">   登录失败   </h3>',
    dangerouslyUseHTMLString: true, //开启html支持
    type: 'error',
    plain: true,//背景
    duration:1000,
  })
}
const opennsign = () => {
  ElMessage({
    message: '<h3 style="white-space:pre !important; letter-spacing:3px !important;">   注册成功   </h3>',
    dangerouslyUseHTMLString: true, //开启html支持
    type: 'success',
    plain: true,//背景
    duration:1000,
  })
}
const opennhasuser = () => {
  ElMessage({
    message: '<h3 style="white-space:pre !important; letter-spacing:3px !important;">   用户名被占用   </h3>',
    dangerouslyUseHTMLString: true, //开启html支持
    type: 'error',
    plain: true,//背景
    duration:1000,
  })
}
defineExpose({
    open,
    openerr,
    opennsign,
    opennhasuser,
    changeView
})
</script>