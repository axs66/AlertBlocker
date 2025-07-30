# AlertBlocker
**AlertBlocker** 是一款专为 iOS 越狱设备开发的插件，旨在屏蔽 Bilibili App 内弹出的 `UIAlert` 弹窗，提升使用体验。

## 📦 插件功能

- 自动隐藏所有 `UIWindowLevelAlert` 弹窗窗口
- 支持多版本的 Bilibili 主客户端与番剧客户端
- 无 UI、无需配置、安装即生效

## ✅ 支持应用

- Bilibili 主客户端：`tv.danmaku.bili`
- Bilibili 番剧客户端：`tv.danmaku.bilianime`
- 旧版 Bilibili 客户端：`com.bilibili.biliclient`

## 🛠 安装方法

1. 将插件源码放入 Theos 项目目录
2. 编译并打包 `.deb` 文件：

```bash
make clean package

	3.	使用 Filza 或 Airdrop 安装 .deb 文件，或通过 SSH 命令安装：

dpkg -i com.yourname.alertblocker_1.0-1_iphoneos-arm.deb

	4.	安装后无需配置，重新打开 Bilibili 即可生效。

📁 文件结构

AlertBlocker/
├── Tweak.xm                 // 核心代码
├── Makefile
├── control
├── AlertBlocker.plist       // 应用注入过滤器
└── README.md

📜 插件原理

通过监听 UIWindowDidBecomeVisibleNotification，判断弹窗级别是否为 UIWindowLevelAlert，如是则立即隐藏该窗口，实现弹窗屏蔽：

[[NSNotificationCenter defaultCenter] addObserverForName:UIWindowDidBecomeVisibleNotification
                                                  object:nil
                                                   queue:[NSOperationQueue mainQueue]
                                              usingBlock:^(NSNotification *note) {
    UIWindow *window = note.object;
    if (window.windowLevel == UIWindowLevelAlert) {
        window.hidden = YES;
    }
}];

🧪 测试环境
	•	iOS 14.8 – iOS 16.7（越狱环境）
	•	Dopamine、Palera1n 越狱工具
	•	Bilibili 客户端版本 7.73.0、7.74.0 等

📮 联系方式

如需反馈问题或建议功能，欢迎联系开发者。

如果你需要英文版、Telegram 频道推广模板，或者支持更多弹窗类型（如 Toast、全屏广告）的高级版 README，我也可以继续为你定制。是否需要？


