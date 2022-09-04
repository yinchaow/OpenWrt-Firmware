# x86_64

## 功能列表

| 状态 	| 系统 	| 服务 	| VPN 	| 网络 	| 带宽监控 	| 统计 	|
|---	|---	|---	|---	|---	|---	|---	|
| 总览 	| Web 管理 	| PassWall 2 	| ZeroTier 	| 接口 	| 显示 	| 图表 	|
| 防火墙 	| 系统 	| Hello World 	|  	| DHCP/DNS 	| 配置 	| 设置 	|
| 路由表 	| 管理权 	| Bypass 	|  	| 主机名 	| 备份 	|  	|
| 系统日志 	| TTYD 终端 	| 广告屏蔽大师 Plus+ 	|  	| IP/MAC绑定 	| 实时流量监测 	|  	|
| 内核日志 	| 软件包 	| AdGuard Home 	|  	| 静态路由 	|  	|  	|
| 进程 	| 启动项 	| ShadowSocksR Plus+ 	|  	| 网络诊断 	|  	|  	|
| 实时信息 	| 计划任务 	| 微信推送 	|  	| 防火墙 	|  	|  	|
| 实时监控 	| 挂载点 	| 解锁网易云灰色歌曲 	|  	| 网速测试 	|  	|  	|
|  	| 时间同步 	| OpenClash 	|  	| Turbo ACC 网络加速 	|  	|  	|
|  	| 磁盘管理 	| 网络唤醒 	|  	|  	|  	|  	|
|  	| 备份/升级 	| Cloudflare速度测试 	|  	|  	|  	|  	|
|  	| 定时重启 	| Nps 内网穿透 	|  	|  	|  	|  	|
|  	| 文件传输 	| UPnP 	|  	|  	|  	|  	|
|  	| 重启 	| Frp 内网穿透 	|  	|  	|  	|  	|
|  	| 关机 	|  	|  	|  	|  	|  	|

## 其他设置

- 登录密码为空
- 主机名改为 `WYC`
- 默认主题为 [Argonne](https://github.com/kenzok78/luci-theme-argonne)
- LAN 接口的 IPv4 为 `192.168.7.5`，子网掩码为 `255.255.255.0`，网关为 `192.168.7.2`，广播为 `192.168.7.255`，DNS 为 `223.6.6.6`、`223.5.5.5`、`119.29.29.29`、`114.114.114.114`
- 禁用 `DHCP`


***


**English** | [中文](https://p3terx.com/archives/build-openwrt-with-github-actions.html)

# Actions-OpenWrt

[![LICENSE](https://img.shields.io/github/license/mashape/apistatus.svg?style=flat-square&label=LICENSE)](https://github.com/P3TERX/Actions-OpenWrt/blob/master/LICENSE)
![GitHub Stars](https://img.shields.io/github/stars/P3TERX/Actions-OpenWrt.svg?style=flat-square&label=Stars&logo=github)
![GitHub Forks](https://img.shields.io/github/forks/P3TERX/Actions-OpenWrt.svg?style=flat-square&label=Forks&logo=github)

A template for building OpenWrt with GitHub Actions

## Usage

- Click the [Use this template](https://github.com/P3TERX/Actions-OpenWrt/generate) button to create a new repository.
- Generate `.config` files using [Lean's OpenWrt](https://github.com/coolsnowwolf/lede) source code. ( You can change it through environment variables in the workflow file. )
- Push `.config` file to the GitHub repository.
- Select `Build OpenWrt` on the Actions page.
- Click the `Run workflow` button.
- When the build is complete, click the `Artifacts` button in the upper right corner of the Actions page to download the binaries.

## Tips

- It may take a long time to create a `.config` file and build the OpenWrt firmware. Thus, before create repository to build your own firmware, you may check out if others have already built it which meet your needs by simply [search `Actions-Openwrt` in GitHub](https://github.com/search?q=Actions-openwrt).
- Add some meta info of your built firmware (such as firmware architecture and installed packages) to your repository introduction, this will save others' time.

## Credits

- [Microsoft Azure](https://azure.microsoft.com)
- [GitHub Actions](https://github.com/features/actions)
- [OpenWrt](https://github.com/openwrt/openwrt)
- [Lean's OpenWrt](https://github.com/coolsnowwolf/lede)
- [tmate](https://github.com/tmate-io/tmate)
- [mxschmitt/action-tmate](https://github.com/mxschmitt/action-tmate)
- [csexton/debugger-action](https://github.com/csexton/debugger-action)
- [Cowtransfer](https://cowtransfer.com)
- [WeTransfer](https://wetransfer.com/)
- [Mikubill/transfer](https://github.com/Mikubill/transfer)
- [softprops/action-gh-release](https://github.com/softprops/action-gh-release)
- [ActionsRML/delete-workflow-runs](https://github.com/ActionsRML/delete-workflow-runs)
- [dev-drprasad/delete-older-releases](https://github.com/dev-drprasad/delete-older-releases)
- [peter-evans/repository-dispatch](https://github.com/peter-evans/repository-dispatch)

## License

[MIT](https://github.com/P3TERX/Actions-OpenWrt/blob/main/LICENSE) © [**P3TERX**](https://p3terx.com)
