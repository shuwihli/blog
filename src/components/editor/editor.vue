<template>
  <div style="border: 1px solid #ccc">
    <Toolbar
      style="border-bottom: 1px solid #ccc"
      :editor="editorRef"
      :defaultConfig="toolbarConfig"
      :mode="mode"
    />
    <Editor
      style="height:70vh;overflow-y: hidden;width: 100vw;"
      v-model="valueHtml"
      :defaultConfig="editorConfig"
      :mode="mode"
      @onCreated="handleCreated"
    />
  </div>
</template>

<script setup>
import '@wangeditor/editor/dist/css/style.css' // 引入 css
import { onBeforeUnmount, ref, shallowRef, onMounted, defineExpose } from 'vue'
import { Editor, Toolbar } from '@wangeditor/editor-for-vue'
import { DomEditor } from '@wangeditor/editor'

// 编辑器实例，必须用 shallowRef
const editorRef = shallowRef()

const toolbarConfig = {}

const editorConfig = {
  placeholder: '请输入内容...',
  MENU_CONF: {}
}

editorConfig.MENU_CONF['uploadImage'] = {
  server: '/api/upload',
  fieldName: 'image',
  // 单个文件的最大体积限制，默认为 2M
  maxFileSize: 1 * 2048 * 2048, // 1M
  withCredentials: true,
// 最多可上传几个文件，默认为 100
  maxNumberOfFiles: 10,
}

// 组件销毁时，也及时销毁编辑器
onBeforeUnmount(() => {
  const editor = editorRef.value
  if (editor == null) return
  editor.destroy()
})

const handleCreated = (editor) => {
  editorRef.value = editor // 记录 editor 实例，重要！
}

const text = ref(
  {
    text:"",
    html:""
  }
)
// 定义一个方法，用于获取 HTML 内容
function getHtml() {
  text.value.html = editorRef.value ? editorRef.value.getHtml() : '';
  text.value.text = editorRef.value.getText();
  console.log(text.value);
  return text.value  
}
// 暴露方法给父组件
defineExpose({
  getHtml
})
</script>