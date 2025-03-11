FROM continuumio/miniconda3:latest  

# 设置工作目录  
WORKDIR /app  

# 将本地打包好的环境传入容器  
COPY LLM.tar.gz /opt/  

# 解压环境到特定目录  
RUN mkdir -p /opt/conda_envs/LLM && \
    tar -xzf /opt/LLM.tar.gz -C /opt/conda_envs/LLM && \
    ls -l /opt/conda_envs/ && \
    rm -f /opt/LLM.tar.gz  

# 移除不必要的文件
RUN find /opt/conda_envs/LLM/ -type f -name "*.pyc" -delete && \
    rm -rf /opt/conda_envs/LLM/pkgs/*  

# 设置环境变量，让 Conda 能够找到解压的环境路径  
ENV PATH="/opt/conda_envs/LLM/bin:$PATH"  

# 默认激活 `my_env` 环境并设置执行命令  
CMD ["python"]  
