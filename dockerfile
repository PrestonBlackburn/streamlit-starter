FROM python:3.11-slim

RUN apt-get update && apt-get install -y \
    build-essential \
    software-properties-common \
    && rm -rf /var/lib/apt/lists/*

RUN mkdir src
WORKDIR /src
COPY . /src

RUN pip install --upgrade pip
RUN pip install ./app
RUN pip install streamlit

ENTRYPOINT ["streamlit", "run", "streamlit_app.py", "--server.port=8501", "--server.address=0.0.0.0"]

# example commands:
# docker build -t myapp .
# docker run -it --rm -p 8501:8501 --env-file=.env myapp