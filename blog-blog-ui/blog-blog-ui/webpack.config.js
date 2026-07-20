// webpack.config.js
const path = require('path');

module.exports = {
  entry: './src/main.js', // 入口文件
  output: {
    filename: 'bundle.js', // 输出文件名
    path: path.resolve(__dirname, 'dist'), // 输出目录
  },
  mode: 'development', // 或 'production' 或 'none'
};