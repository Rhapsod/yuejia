安装
安装 android sdk.
安装 titanium sdk.
安装 node, npm 等
安装 coffeescript:
$ npm install -g coffee-script
$ npm install -g tishadow
$ npm install  # 这个命令是根据本目录下的 package.json 来安装各种node package
有个 安卓测试机 或者genymotion （IOS开发情况问梦丽）

运行：

$ git clone ...
$ cd <this folder>
$ cp tiapp.xml.example tiapp.xml
$ cp app/alloy.js.example app/alloy.js
$ cp run.example run
$ ./run
$ titanium build --target device --platform android
$ titanium build --target device --platform android --tishadow
代码规范
请全部用coffee编写，如果单个JS文件coffee文件较多则自己新建文件夹

控件命名

home_market_view: 页面名字内容名字内容控件名字

事件监听

go_to_market_view : go_内容名字view #指跳转到某一个视图 go_to_market_page : go内容名字_page #指跳转到某一个页面

子Coffee文件命名格式: 父类JS文件名_内容.coffee, 例子: home_frame.coffee
图片存放路径命名例子：assets/images/home/mainmenu/1.png 格式:home:对应的JS名字
公用图片则放在：assets/images/public/
图片命名规范
可以自己补充
