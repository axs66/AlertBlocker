# AlertBlocker

一个简单实用的越狱插件，自动隐藏所有系统级弹窗窗口（`UIWindowLevelAlert`），可用于屏蔽如越狱检测提示、系统警告、广告弹窗等干扰内容。

## ✨ 插件功能

- ✅ 自动隐藏所有 `UIWindowLevelAlert` 级别的弹窗窗口
- ✅ 支持系统级弹窗（如蜂窝数据关闭提示、SIM卡弹窗等）
- ✅ 可扩展支持特定 App（如微信、邮件）弹窗拦截
- ✅ 无界面、无设置，安装即生效，占用极低资源

## 📍 默认注入目标（Filter）

插件默认注入以下进程：

| Bundle ID                | App 名称         |
|--------------------------|------------------|
| com.apple.springboard    | SpringBoard（桌面与状态栏）|
| com.apple.Preferences    | 设置 App          |
| com.apple.mobilemail     | 邮件 App          |
| com.tencent.xin          | 微信（如需拦截越狱弹窗）|

你可以根据实际需要编辑 `AlertBlocker.plist` 来更改注入目标。
