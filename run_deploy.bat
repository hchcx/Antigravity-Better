@echo off
if "%1"=="h" goto start
mshta vbscript:createobject("wscript.shell").run("""%~nx0"" h",0)(window.close)&&exit
:start
python "Antigravity-Better 部署工具.py"
if %errorlevel% neq 0 (
    py "Antigravity-Better 部署工具.py"
)
