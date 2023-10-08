FROM python:3.10-slim as builder
WORKDIR /app
COPY dashboard.py /app/dashboard.py
COPY requirements.txt /app/requirements.txt
RUN pip install -r requirements.txt

ENTRYPOINT ["streamlit", "run", "dashboard.py", "--server.port=8501", "--server.address=0.0.0.0"]
