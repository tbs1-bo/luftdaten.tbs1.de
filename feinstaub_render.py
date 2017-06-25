import paho.mqtt.client as mqtt
import time
import logging

MQTT_HOST = "localhost"

MQTT_TOPIC_P1 = "feinstaub/ebike/sensordatavalues/0/value"
MQTT_TOPIC_P2 = "feinstaub/ebike/sensordatavalues/1/value"
MQTT_TOPIC_TEMP = "feinstaub/ebike/sensordatavalues/2/value"
MQTT_TOPIC_HUM = "feinstaub/ebike/sensordatavalues/3/value"
MQTT_TOPICS = [MQTT_TOPIC_P1, MQTT_TOPIC_P2, MQTT_TOPIC_TEMP, MQTT_TOPIC_HUM]

# quality of service
MQTT_QOS = 2

TEMPLATE_FILE = "current_values.tpl"
PAGE_LOCATION = "/var/www/feinstaub/current_values.html"
# PAGE_LOCATION = "current_values.html"

# wait so many seconds for a new message
WAIT_SECONDS = 3


class FeinstaubPageRenderer:
    def __init__(self, topics, default_qos=2):
        self.qos = default_qos
        self.client = mqtt.Client()
        self.client.on_connect = self.on_connect
        self.client.on_message = self.on_message
        self.values = {}
        for t in topics:
            self.values[t] = None

    def connect_and_wait(self, host:str, wait_seconds:int, port:int=1883):
        self.client.connect(host, port=port)
        self.client.loop_start()
        logging.debug("wating %s seconds for values", wait_seconds)
        time.sleep(wait_seconds)
        self.client.disconnect()

    def on_connect(self, client: mqtt.Client, userdata, flags, rc):
        logging.debug("connected")
        top_qos = [(t, self.qos) for t in self.values]
        self.client.subscribe(top_qos)

    def on_message(self, client, userdata, msg):
        topic = msg.topic
        payload = msg.payload
        logging.debug("msg received %s: %s", topic, payload)

        if topic in self.values:
            self.values[topic] = payload

    def render_page(self, template_file, page_location):
        logging.debug("rendering page to %s", page_location)
        f = open(template_file, 'r')
        tpls = f.read()
        f.close()
        tpls = tpls.format(temperature=float(self.values[MQTT_TOPIC_TEMP]),
                           humidity=float(self.values[MQTT_TOPIC_HUM]),
                           p1=float(self.values[MQTT_TOPIC_P1]),
                           p2=float(self.values[MQTT_TOPIC_P2]))

        f = open(page_location, mode='w')
        f.write(tpls)
        f.close()


def main():
    f = FeinstaubPageRenderer(MQTT_TOPICS, MQTT_QOS)
    f.connect_and_wait(MQTT_HOST, WAIT_SECONDS)
    f.render_page(TEMPLATE_FILE, PAGE_LOCATION)

if __name__ == "__main__":
    logging.basicConfig(level=logging.DEBUG)
    main()
