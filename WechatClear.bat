@echo off
setlocal

REM �ر�΢�Ž���
echo ���ڹر�΢��...
taskkill /F /IM WeChat.exe

REM ����΢������Ŀ¼��·��
set WeChatDataPath=%USERPROFILE%\Documents\WeChat Files

REM ȷ��ɾ������
echo ��ɾ��΢������Ŀ¼�е������¼: %WeChatDataPath%
set /p confirm=��ȷ��Ҫ������? (Y/N): 
if /I not "%confirm%"=="Y" (
    echo ������ȡ����
    goto end
)

REM ɾ�������¼
echo ����ɾ�������¼...
rmdir /S /Q "%WeChatDataPath%"

REM ���´�������Ŀ¼
mkdir "%WeChatDataPath%"

echo ������ɡ�

:end
pause
endlocal
