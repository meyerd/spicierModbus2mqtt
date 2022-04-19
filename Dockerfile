FROM python:alpine

WORKDIR /app

RUN mkdir -p /app/conf/
RUN pip install --no-cache-dir pymodbus
RUN pip install --no-cache-dir paho-mqtt

COPY modbus2mqtt.py ./
COPY modbus2mqtt modbus2mqtt/

ENTRYPOINT ["python", "-u", "./modbus2mqtt.py", "--config", "/app/conf/modbus2mqtt.csv"]
CMD ["--help"]