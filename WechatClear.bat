@echo off
setlocal

REM 关闭微信进程
echo 正在关闭微信...
taskkill /F /IM WeChat.exe

REM 设置微信数据目录的路径
set WeChatDataPath=%USERPROFILE%\Documents\WeChat Files

REM 确认删除操作
echo 将删除微信数据目录中的聊天记录: %WeChatDataPath%
set /p confirm=你确定要继续吗? (Y/N): 
if /I not "%confirm%"=="Y" (
    echo 操作已取消。
    goto end
)

REM 删除聊天记录
echo 正在删除聊天记录...
rmdir /S /Q "%WeChatDataPath%"

REM 重新创建数据目录
mkdir "%WeChatDataPath%"

echo 操作完成。

:end
pause
endlocal
