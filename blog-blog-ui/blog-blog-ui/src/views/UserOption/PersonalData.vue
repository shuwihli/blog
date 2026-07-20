<template>
    <div>
      <div class="fw myinformation">个人资料</div>
                <el-row  style="height: 100%;width: 100%;">
                   <el-col :span="18">
                      <div class="fm" style="margin:10px 0 10px 0;background-color: white;">基本信息</div> 
                      <el-form 
                          :model="form"
                          label-width="auto"
                          style="max-width: 600px"
                          :rules="rules"
                          >
                          <el-form-item label="用户名">
                            <el-input v-model="form.name"/>
                          </el-form-item>
                          <el-form-item label="开始工作" prop="workingHours">
                            <!-- 日期选择器 -->
                            <el-time-picker
                                v-model="form.date2"
                                placeholder="Pick a time"
                                style="width: 100%"
                              />
                          </el-form-item>
                          <!-- 认证有问题,尝试使用自定义认证 -->
                          <el-form-item label="职业方向" prop="PositionDirection">
                            <el-col :span="12">
                              <el-select 
                                placeholder="请选择"
                                size="large"
                                v-model="form.region">
                                <el-option value="真实数据从数据库调取"></el-option>
                                <el-option value="真实数据从数据库调取"></el-option>
                              </el-select>
                            </el-col>
                          </el-form-item>
                          <el-form-item label="职位">
                            <el-input v-model="form.delivery" />
                          </el-form-item>
                          <el-form-item label="公司">
                            <el-input v-model="form.delivery" />
                          </el-form-item>
                          <el-form-item>
                            <el-button type="primary" @click="onSubmit">Create</el-button>
                            <el-button>Cancel</el-button>
                          </el-form-item>
                        </el-form>
                    </el-col>
                    <el-col :span="6">
                      <el-upload
                          class="avatar-uploader"
                          :action=username
                          :show-file-list="false"
                          :on-success="handleAvatarSuccess"
                          name="image"
                           method="post"
                          :before-upload="beforeAvatarUpload"
                        >
                          <img v-if="imageUrl" :src="imageUrl" class="avatar" />
                          <el-icon v-else class="avatar-uploader-icon"><Plus /></el-icon>
                      </el-upload>
                        <!-- <el-avatar :size="100" :src="circleUrl"></el-avatar> -->
                    </el-col>
                </el-row>
    </div>
  </template>
<script lang="ts" setup>
import { reactive, onMounted } from 'vue'
import { ref } from 'vue'
import { ElMessage } from 'element-plus'
import { Plus } from '@element-plus/icons-vue'
import {BaseEncode,BaseDecode} from '@/utils/BaseUtil'
import type { UploadProps } from 'element-plus'
onMounted(()=>{
  getUserInfo()
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
  const imageUrl = ref('')
const username = ref('')

function checkProtocolAndIP(str) {
      try {
      new URL(str);
      return true;
    } catch (e) {
      return false;
    }
}
function getUserInfo(){ // 从cookie中获取用户存储的信息
  var cookie = document.cookie.replace(
    /(?:(?:^|.*;\s*)userInfo\s*\=\s*([^;]*).*$)|^.*$/, 
    "$1",
  );
  if(cookie){
    const userInfo = ref()
    userInfo.value = JSON.parse(BaseDecode(cookie))
          console.log(checkProtocolAndIP(userInfo.value.avatar));
        if(checkProtocolAndIP(userInfo.value.avatar)){
          imageUrl.value =JSON.parse(BaseDecode(cookie)).avatar
           username.value =JSON.parse(BaseDecode(cookie)).username
          }else if(!checkProtocolAndIP(userInfo.value.avatar)){
          imageUrl.value ="http://127.0.0.1:9090/"+JSON.parse(BaseDecode(cookie)).avatar
          username.value = "http://127.0.0.1:9090/upload?username="+JSON.parse(BaseDecode(cookie)).username
        }    
  }
  return "没有该cookie值"
}

const handleAvatarSuccess: UploadProps['onSuccess'] = (
  response,
  uploadFile
) => {
  console.log(URL.createObjectURL(uploadFile.raw!));
  imageUrl.value = URL.createObjectURL(uploadFile.raw!)
}
const beforeAvatarUpload: UploadProps['beforeUpload'] = (rawFile) => {
  if (rawFile.type !== 'image/jpeg') {
    ElMessage.error('Avatar picture must be JPG format!')
    return false
  } else if (rawFile.size / 1024 / 1024 > 2) {
    ElMessage.error('Avatar picture size can not exceed 2MB!')
    return false
  }
  alert("新头像在重新登录后生效")
  return true
}
const onSubmit = function (){
}
</script>
<style scoped>
.avatar-uploader .avatar {
  width: 178px;
  height: 178px;
  display: block;
  object-fit: cover;
}
</style>

<style>
.avatar-uploader .el-upload {
  border: 1px dashed var(--el-border-color);
  border-radius: 6px;
  cursor: pointer;
  position: relative;
  overflow: hidden;
  transition: var(--el-transition-duration-fast);
}
.avatar-uploader .el-upload:hover {
  border-color: var(--el-color-primary);
}

.el-icon.avatar-uploader-icon {
  object-fit: cover;  
  font-size: 28px;
  color: #8c939d;
  width: 150px;
  height: 150px;
  text-align: center;
}
</style>
