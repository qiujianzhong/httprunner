# HttpRunner
本仓库是clone  https://github.com/httprunner/httprunner
## 修复/新增以下内容：

- 新增skip skipif
  skip: "remark"
  skipif: True

- 新增环境切换 
  export env= #读取.env
  export env=test #读取.envtest

- yaml格式检查 
  提示错误行数

- 性能测试自定义Pushgateway的instance名称
  export httprunnertype=httprunner

## 安装方法：
```bash
$ bash -c "$(curl -ksSL https://raw.githubusercontent.com/qiujianzhong/httprunner/master/scripts/install.sh)"
```

ps:代码写的不是很优雅，只是为了实现功能。