FROM python:3.10-slim

WORKDIR /app

# 复制依赖文件
COPY requirements.txt .

# 安装依赖
RUN pip install --no-cache-dir -r requirements.txt

# 复制所有文件
COPY . .

# 设置 Python 路径
ENV PYTHONPATH=/app

# 直接启动
CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8080"]