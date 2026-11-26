# Windows 电脑控制（Windows-MCP 接入）

本 bundle 把本机的 **Windows-MCP** 服务器（CursorTouch/Windows-MCP，MIT）接进 DeepSeek Harness。
接入后，Agent 会获得一批 `mcp__winmcp__*` 工具，可以直接操作这台 Windows 电脑：

- **看**：截图、可访问性快照
- **动**：点击、输入、滚轮、移动、快捷键、等待
- **管**：窗口切换/缩放、启动应用、文件读写、剪贴板、进程、通知、注册表

## 前置条件

1. Python 3.14+ 与 uv（本机已装：`C:\Users\wxy05\AppData\Local\Programs\Python\Python314`）
2. Windows-MCP 服务器（本机已装：`C:\Users\wxy05\.local\bin\windows-mcp.exe`，`--help` 可验证）

## 安全须知

这个能力等同于把鼠标键盘交给 AI。安装即表示你知情并同意：

- 涉及删文件、改注册表、发送消息前，先看工具描述与参数；
- 只在信任的会话里启用；
- 可随时在 插件 管理里停用本 bundle 收回权限。

## 验证

安装后新建会话，调用 `mcp__winmcp__ping`（或任意 `mcp__winmcp__*` 工具）确认连接。
