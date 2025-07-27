FROM python:3

WORKDIR /app

COPY requirements.txt ./

RUN pip install --no-cache-dir --upgrade pip \
  && pip install --no-cache-dir -r requirements.txt

COPY accountInfo.py /app
COPY runPnL.py /app

CMD ["python", "runPnL.py"]
