<script setup>
import { reactive, toRefs } from 'vue'
import axios from 'axios'
import { useRouter } from 'vue-router';
const config = reactive({
  max: 3,
})
const formInline = reactive({
  user: '',
  region: '',
  date: '',
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
const rules = reactive({
// 对象数组
  name:[
  {required: true, message: '请输入姓名', trigger: 'blur'},
  {min:3,max:5,message: '长度在 3 到 5 个字符', trigger: 'blur'}
    ],
  workingHours:[
    {required: true, message: '请输入工作时间', trigger: 'change'},
    {min:1,max:3,message:"你的工龄不够,还不能来注册成为我的用户",trigger:'blur'}
  ],
  PositionDirection:[
    {required:true,message:"请输入职业方向",trigger:'change'},
  ]
})
// 获取用户信息
axios.get("http://localhost:9090/getuser",{withCredentials: true,}).then(res=>{
 form.name = res.data.authentication.principal.nickName 
  console.log(res.data.authentication.principal.nickName);
})

const router = useRouter();
// 侧边栏路由跳转
  function pushScopeId(){
    router.push('pd');
  }
  function pushScopeud() {
    router.push('ua');
  }

const state = reactive({
    circleUrl: "src/image/wallhaven-zyge7y.webp", 
})
const { circleUrl, squareUrl, sizeList } = toRefs(state)
</script>
<template>
    <HorizontalNav/>
    <div class="common-layout">sdasda
      <el-container>
        <el-header height="50px" class="Header">
            <a href="">>返回个人主页</a>
        </el-header>

        <el-container class="body">
          <el-aside width="200px" class="aside">
            <!-- 设置字体大小为16px,还未设置 -->
              <el-row>
                <el-col :span="24" gutter="0">
                  <el-button style="width: 100%;height: 50px; border-style: none;" @click="pushScopeId()" >个人资料</el-button>
              </el-col>
              <el-col :span="24" gutter="0">
                <el-button style="width: 100%;height: 50px; border-style: none;" @click="pushScopeud()">账号设置</el-button>
              </el-col>
              <el-col :span="24">
                <el-button style="width: 100%;height: 50px; border-style: none;">通用设置</el-button>
              </el-col>
              <el-col :span="24">
                <el-button style="width: 100%;height: 50px; border-style: none;">消息设置</el-button>
              </el-col> 
              <el-col :span="24">
                <el-button style="width: 100%;height: 50px; border-style: none;">屏蔽管理</el-button>
              </el-col> 
              <el-col :span="24">
                <el-button style="width: 100%;height: 50px; border-style: none;">标签管理</el-button>
              </el-col> 
            </el-row>
          </el-aside>
        <el-main class="main">
          <!-- 根据按钮选线，动态展示页面内容 -->
          <router-view>  </router-view>
        </el-main>
        </el-container>
      </el-container>
    </div>
</template>
<style scoped>
el-input{
  padding: 0;
}
.common-layout{
  background-color: #F2F3F5;
    box-sizing: border-box;
    width: 100vw;
    height: 100vh;
    padding: 10px 15vw;
}
.el-menu{
  /* 样式规则 */
  padding:0 30px;
  width: 100%;
  display: flex;
  justify-content: center;
  align-items: center;
  background-color:white
}
.Header{
    /* background-color: #409EFF; */
    width: 100%;
    display: flex;
    align-items: center;
    background-color:white;
    margin-top: 10px;
    position: relative;
}
.body{
    height: 90vh;
    width: 100%;
}
.aside{
    text-align: center;
    height:70vh;
    width: 15vw;
    margin: 10px 0 0 0px;
    padding: 10px;
    background-color:white;
}
.main{
    margin: 10px 0 0 10px;
    background-color:white
}
.myinformation{
  display: flex;
  align-items: center;
  background-color: white ;
  padding-bottom: 20px;
  font-size:var(--el-font-size-large);
  height: 40px;
  border-bottom: 1px solid rgba(0,0,0,0.1);
}
</style>