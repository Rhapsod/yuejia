# Dependency
* titanium sdk.
* node, npm etc
* $ npm install -g coffee-script
* $ npm install -g tishadow
* $ npm install  # 安装特定项目需要的依赖

# Run
* $ cp tiapp.xml.example tiapp.xml
* $ cp app/alloy.js.example app/alloy.js
* $ cp run.example run
* $ ./run
* $ titanium build --target device --platform android
* $ titanium build --target device --platform android --tishadow

# Convention
* to_market_view : to_内容名字_view #指跳转到某一个视图
* 子Coffee文件命名格式: 父类JS文件名_内容.coffee, 例子: home_frame.coffee
* 图片存放路径命名例子：assets/images/home/mainmenu/1.png 格式:home:对应的JS名字
* 公用图片则放在：assets/images/public/
