FROM python:3-slim

WORKDIR /usr/src/app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY modbus2mqtt.py ./
COPY addToHomeAssistant.py ./

ENTRYPOINT ["python", "./modbus2mqtt.py"]
CMD ["--help"]
