@echo off
echo Starting llama-server API for DeepSeek-R1-Distill-Qwen-1.5B-Q6_K.gguf
start cmd.exe /k "llama-server.exe -m DeepSeek-R1-Distill-Qwen-1.5B-Q6_K.gguf -c 15000 -ngl 999"
echo Starting Gradio Chat-bot
gradio .\Gradio-R1-good-app.py