# HttpRunner
本仓库是clone  https://github.com/httprunner/httprunner
## 修复/新增以下内容：

- 去除4.3.5强制给url加的 /
  
- 新增skip skipif  
  skip: "remark"  #直接跳过  
  skipif: "True"  #内容包含True，或者数字大于0即可跳过  

- 新增if 支持表达式通过后再执行此case  
  if: "$xxx>131 || $yyy==abc"

- 新增环境切换  
  export env= #读取.env  
  export env=test #读取.envtest

- yaml/json格式检查， 提示错误行数

-- 修复精度丢失的问题

- 性能测试自定义Pushgateway的instance名称  
  export httprunnertype=httprunner

- 新增重试     export httprunnerretry=3  
- 新增报告文件夹前缀 export httprunnerresults=test

- 模板报告新增Toggle Success Rows按钮，可以隐藏Status为success的行

- --case-timeout  (default 3600s改为120s)   
- ws Timeout  (default 30s改为60s)  

- 去除谷歌统计  
  
-  修复支持参数中多个变量或者多个function  
  


## 安装方法：
```bash
sudo bash -c "$(curl -ksSL https://raw.githubusercontent.com/qiujianzhong/httprunner/master/scripts/install.sh)"
```

ps:代码写的不是很优雅，只是为了实现功能。