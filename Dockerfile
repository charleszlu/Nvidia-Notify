ARG GECKODRIVER_VER 0.27.0
ARG PYTHON_VER = 3.8

FROM python:${PYTHON_VER}-slim

# Download mozilla geckodriver
ADD https://github.com/mozilla/geckodriver/releases/download/v${GECKODRIVER_VER}/geckodriver-v${GECKODRIVER_VER}-linux64.tar.gz /gecko/

COPY . /notify

RUN pip install -r /notify/requirements.txt

ENTRYPOINT ["python notifier.py"]
