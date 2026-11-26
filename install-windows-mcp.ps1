# 一键安装 Windows-MCP 服务器（幂等）
$ErrorActionPreference = "Stop"
$uv = "C:\Users\wxy05\AppData\Local\Programs\Python\Python312\Scripts\uv.exe"
$py = "C:\Users\wxy05\AppData\Local\Programs\Python\Python314\python.exe"
if (-not (Test-Path $uv)) { Write-Host "先装 uv：pip install uv -i https://pypi.tuna.tsinghua.edu.cn/simple"; exit 1 }
if (-not (Test-Path $py)) { Write-Host "需要 Python 3.14（见 README，npmmirror 二进制镜像下载）"; exit 1 }
$env:UV_DEFAULT_INDEX = "https://pypi.tuna.tsinghua.edu.cn/simple"
& $uv tool install windows-mcp --python $py --force
if (Test-Path "C:\Users\wxy05\.local\bin\windows-mcp.exe") {
  Write-Host "OK: C:\Users\wxy05\.local\bin\windows-mcp.exe"
} else { Write-Host "安装完成但路径不同，请执行 uv tool dir 查看" }
