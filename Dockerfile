FROM python:3.12-slim

RUN pip install uv

COPY requirements.txt ./
COPY . ./ 

RUN uv pip install -r requirements.txt --system

CMD ["python", "world.py"]