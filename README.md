# AlertBlocker for Bilibili

一个专为 Bilibili App 打造的越狱插件，用于自动隐藏 B 站内的系统级弹窗（`UIWindowLevelAlert`），如启动页提示、登录检测弹窗、青少年模式提醒、越狱风险提示等。

## 📦 插件信息

- 插件名称：**AlertBlocker**
- 适用 App：**哔哩哔哩（Bilibili）**
- 包名（Package ID）：

> 请将 `yourname` 替换为你的源名或开发者 ID。


## ✨ 插件功能

- ✅ 自动隐藏所有 `UIWindowLevelAlert` 弹窗
- ✅ 安装即生效，无需配置
- ✅ 精准注入 Bilibili，不影响系统其他应用
- ✅ 支持 rootless 和 rootful 越狱环境

## 📍 注入目标（Filter）

插件仅注入以下 Bilibili 相关 App：

```xml
com.himalaya.bilibili

