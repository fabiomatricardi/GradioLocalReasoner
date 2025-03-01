@echo off
:START
echo [92m
echo Creating Virtual Environment...
python -m venv venv
echo Activate Virtual Environment...
call venv\Scripts\activate.bat
echo Installing requirements...
pip install -r requirements.txt
goto :CHINA

:CHINA
echo Are you in China?  (Y/N) 
set /p inchina=

if %inchina%==Y (goto :HFM
) else if %inchina%==N (goto :OPTIONS 
) else (goto :NOGOOD)

:NOGOOD
echo [44m [1m [93m
echo INVALID CHOICE
echo [0m
goto :CHINA

:HFM
echo Setting up HF-Mirror repository
echo powershell -Command "$env:HF_ENDPOINT = 'https://hf-mirror.com'"
goto :OPTIONS


:OPTIONS
echo Do you want to download the model? (Y/N) 
set /p whatapp=

if %whatapp%==Y (goto :MODEL1
) else if %whatapp%==N (goto :DIY 
) else (goto :INVALID)

:MODEL1
echo Downloading the model from the HF repo...
wget https://hf-mirror.com/bartowski/DeepSeek-R1-Distill-Qwen-1.5B-GGUF/resolve/main/DeepSeek-R1-Distill-Qwen-1.5B-Q6_K.gguf -OutFile DeepSeek-R1-Distill-Qwen-1.5B-Q6_K.gguf
goto :QUIT

:INVALID
cls
echo [44m [1m [93m
echo INVALID CHOICE
echo [0m
goto :OPTIONS

:DIY
echo [44m [1m [93m
echo REMEMBER to download the model from https://hf-mirror.com/bartowski/DeepSeek-R1-Distill-Qwen-1.5B-GGUF/resolve/main/DeepSeek-R1-Distill-Qwen-1.5B-Q6_K.gguf
echo [0m
goto :QUIT


:QUIT
echo [91mBYE BYE
echo [0m
pause
exit