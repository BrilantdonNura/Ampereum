import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:mqtt_client/mqtt_browser_client.dart'; // when developing in web
import 'dart:math';
import 'package:mqtt_client/mqtt_client.dart';

class ProviderTest extends ChangeNotifier {
  final MqttBrowserClient mqttClient = MqttBrowserClient(
      'ws://192.168.56.1/ws', 'user_${Random().nextInt(10000)}');

  String _latestMessage = ''; // New property to hold the latest message

  String get latestMessage => _latestMessage;

  ProviderTest() {
    _initialize();
  }

  Future<void> _initialize() async {
    mqttClient.port = 9001;
    mqttClient.keepAlivePeriod = 30;
    mqttClient.onConnected = _onConnected;
    mqttClient.onDisconnected = _onDisconnected;

    try {
      await mqttClient.connect();
      subscribe("test");

    } catch (e) {
      print('Connection failed: $e');
      mqttClient.disconnect();
    }
  }

  bool _onConnected() {
    print('Connected to MQTT broker');
    return true;
  }

  void _onDisconnected() {
    print('Disconnected from MQTT broker!');
  }

  void subscribe(String topic) {
    if (mqttClient.connectionStatus!.state == MqttConnectionState.connected) {
      mqttClient.subscribe(topic, MqttQos.exactlyOnce);

      mqttClient.updates!
          .listen((List<MqttReceivedMessage<MqttMessage>> messages) {
        final MqttPublishMessage message =
            messages[0].payload as MqttPublishMessage;
        final String payload =
            MqttPublishPayload.bytesToStringAsString(message.payload.message);

        // Update the latest message property
        _latestMessage = payload;

        // Notify listeners about the change
        notifyListeners();
      });
    }
  }
}
