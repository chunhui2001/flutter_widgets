import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter/services.dart';
import 'package:flutter_mylocation/flutter_mylocation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _flutterMylocationPlugin = FlutterMylocation();

  String _platformVersion = 'Unknown';
  String _location = 'Unknown';

  @override
  void initState() {
    super.initState();
    initPlatformState();
  }

  Future<void> initPlatformState() async {
    String platformVersion;
    String location;

    try {
      platformVersion = await _flutterMylocationPlugin.getPlatformVersion() ?? 'Unknown platform version';
      location = await _flutterMylocationPlugin.getLocation() ?? 'Unknown location';
    } on PlatformException {
      platformVersion = 'Failed to get platform version.';
      location = 'Failed to get device location';
    }

    if (!mounted) return;

    setState(() {
      _platformVersion = platformVersion;
      _location = location;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Plugin example app'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Running on: $_platformVersion'),
              Text('Location is: $_location'),
            ],
          ),
        ),
      ),
    );
  }
}
