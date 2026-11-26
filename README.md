# windows-control-skill

把 Windows 电脑控制能力（Windows-MCP）封装成可直接安装的 **DeepSeek Harness bundle + SKILL**，安装后 Agent 获得 `mcp__winmcp__*` 工具：截图、点击、输入、滚轮、窗口、应用、文件、剪贴板、进程、注册表——相当于把鼠标键盘交给 AI。

## 目录

- `package.json` / `cordis.patch.yml` / `locale/` / `icon.svg` / `docs/` —— DSH 配置型 bundle（接入 `@deepseek-ai/dsh-mcp-client`，stdio 连 `windows-mcp.exe`）
- `SKILL.md` —— 技能说明（放 `~/.agents/skills/windows-control` 即可热加载）
- `install-windows-mcp.ps1` —— 一键装服务器（uv tool install windows-mcp）
- `SECURITY.md` —— 安全须知

## 安装（三选一）

1. **DSH**：插件 → 添加插件 → 选择本目录（bundle 生效需重启/新会话）
2. **技能**：把 `SKILL.md` 放进 `~/.agents/skills/windows-control/`
3. **其他 MCP 客户端**（Claude Desktop 等）：stdio 命令填 `windows-mcp.exe` 全路径

## 前置

Python 3.14+ 与 uv；`uv tool install windows-mcp`。

## 许可

本项目文件 MIT；能力由 [CursorTouch/Windows-MCP](https://github.com/CursorTouch/Windows-MCP)（MIT）提供。
