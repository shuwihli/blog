<template>
    <div>
      <div class="myinformation">个人资料</div>
                <el-row  style="height: 100%;width: 100%;">
                   <el-col :span="18">
                      <div style="margin:10px 0 10px 0;background-color: white;">基本信息</div> 
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
                        <el-avatar :size="100" :src="circleUrl"></el-avatar>
                        <!-- <span style="margin:10px 0 0 10px;">支持jpg,pdf,gif格式</span> -->
                      </el-col>
                      </el-row>
    </div>
  
  
  
    <div>
      <div class="myinformation">个人资料</div>
                <el-row  style="height: 100%;width: 100%;">
                   <el-col :span="18">
                      <div style="margin:10px 0 10px 0;background-color: white;">基本信息</div> 
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
                        <el-avatar :size="100" :src="circleUrl"></el-avatar>
                        <!-- <span style="margin:10px 0 0 10px;">支持jpg,pdf,gif格式</span> -->
                      </el-col>
                      </el-row>
    </div>
  
  
  
    <div>
      <div class="myinformation">个人资料</div>
                <el-row  style="height: 100%;width: 100%;">
                   <el-col :span="18">
                      <div style="margin:10px 0 10px 0;background-color: white;">基本信息</div> 
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
                        <el-avatar :size="100" :src="circleUrl"></el-avatar>
                        <!-- <span style="margin:10px 0 0 10px;">支持jpg,pdf,gif格式</span> -->
                      </el-col>
                      </el-row>
    </div>
  </template>
  <script setup>
  import { reactive, toRefs } from 'vue'
  import axios from 'axios'
  const config = reactive({
    max: 3,
  })
  const formInline = reactive({
    user: '',
    region: '',
    date: '',
  })
  const state = reactive({
      circleUrl: "src/image/wallhaven-zyge7y.webp", 
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
  
  const username = reactive("sdasd ")
  const { circleUrl, squareUrl, sizeList } = toRefs(state)
  
  </script>
  <!-- scoped 样式仅应用于内部 -->
  <style scoped>

  </style>