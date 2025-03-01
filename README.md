<img src='https://github.com/fabiomatricardi/GradioLocalReasoner/raw/main/reasonersMOCKUP.png' width=900>

# GradioLocalReasoner
Gradio Reasoner Chatbot with DeepSeek-R1-Distill-Qwen-1.5B

An inspired chat-bot interface with Gradio that shows the thinking process, the time and the answer of R1 models.

### Your local Reasoning AI with *[DeepSeek-R1-Distill-Qwen-1.5B-Q6_K.gguf](https://huggingface.co/bartowski/DeepSeek-R1-Distill-Qwen-1.5B-GGUF/resolve/main/DeepSeek-R1-Distill-Qwen-1.5B-Q6_K.gguf)* and *llamaCPP server*
A reasoning model trained using RL (Reinforcement Learning) that demonstrates structured reasoning capabilities.
Inspired by 🤗 [this Hugging Face Space code](https://huggingface.co/spaces/Lyte/DeepSeek-R1-Distill-Qwen-1.5B-Demo-GGUF): you can download the original code 💻 from [here](https://huggingface.co/spaces/Lyte/DeepSeek-R1-Distill-Qwen-1.5B-Demo-GGUF).

## Instructions
#### Valid for Windows OS
- Clone the repo
- enter
- run the installation script
```bash
install_V2.bat
```
> this will create a virtual environment, activate it and install the dependencies
> 
> You may be asked if to use the HF-Mirror
> 
> Here the batch file script
```batch
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
```


- otherwise download **MANUALLY** the model in the project directory from [here DeepSeek-R1-Distill-Qwen-1.5B-Q6_K.gguf](https://huggingface.co/bartowski/DeepSeek-R1-Distill-Qwen-1.5B-GGUF/resolve/main/DeepSeek-R1-Distill-Qwen-1.5B-Q6_K.gguf)
- from the terminal start the chatbot and the llamacpp server with a single command
```
start.bat
```

For only textual interface, refer to my other Repository

[🤔 DeepSeekQwen_AIO](https://github.com/fabiomatricardi/DeepSeekQwen_AIO)


---

#### For other OS
- Clone the repo
- enter the repo directory `cd GradioLocalReasoner`
- create a virtual environment `python -m venv venv`
- activate the venv `source venv/bin/activate`
- install the dependencies `pip install -U gradio tiktoken openai`
- to be done... soon



