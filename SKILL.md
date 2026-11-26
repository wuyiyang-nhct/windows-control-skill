---
name: windows-control
description: 操控本机 Windows：截图、点击、输入、滚轮、窗口管理、启动应用、文件/剪贴板/进程/注册表等。用于「帮我操作电脑软件 / 直接移动鼠标 / 打开某个程序点某个按钮」类任务；依赖本机已安装的 Windows-MCP 服务器（windows-mcp.exe，Python 3.14+uv），并已通过 DSH bundle 或 MCP 客户端注册为 mcp__winmcp__* 工具。
---

# Windows 控制技能

## 能力

- 截图（看屏幕）、可访问性快照（读界面结构）
- 鼠标：点击、移动、拖拽、滚轮
- 键盘：输入文本、快捷键
- 窗口：前台切换、缩放、最大化
- 应用：启动 / 关闭
- 系统：文件读写、剪贴板、进程、通知、注册表、PowerShell

## 使用

1. 先 `截图` 或 `快照` 看当前屏幕/界面结构；
2. 用快照里的坐标或控件名执行 `点击` / `输入`；
3. 敏感操作（删文件、注册表）先读工具描述再执行，重要动作前先和用户确认。

## 前置（本机已就绪）

- 服务器：`C:\Users\wxy05\.local\bin\windows-mcp.exe`
- 运行环境：Python 3.14 + uv
- DSH 接入：`@local/windows-mcp-control` bundle（serverName: winmcp, stdio）
- 重装脚本：`install-windows-mcp.ps1`
