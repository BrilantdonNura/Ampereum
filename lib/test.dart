import 'package:flutter/material.dart';
import 'package:smarthomev3/mqtt/mqtt_service.dart';

class TestMQTT extends StatefulWidget {
  const TestMQTT({super.key});

  @override
  State<TestMQTT> createState() => _TestMQTTState();
}

class _TestMQTTState extends State<TestMQTT> {
  String theMessage = "The Message";
  final mqttClient = MqttService();

  void handleMqttMessages(dynamic data, dynamic topic) {
    print("The data: $data\n");
    setState(() {});
    theMessage = data;
    print("The topic: $topic\n");
  }

  void connectToMqtt() async {
    await mqttClient.connect();
    mqttClient.subscribe("test");
    mqttClient.onDataReceived = handleMqttMessages;
  }

  @override
  void initState() {
    connectToMqtt();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MQTT Test"),
      ),
      body: Column(children: [
        Text(
          theMessage,
          style: const TextStyle(fontSize: 20),
        ),
      ]),
    );
  }
}
