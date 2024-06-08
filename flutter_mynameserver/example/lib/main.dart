import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter/services.dart';
import 'package:flutter_mynameserver/flutter_mynameserver.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _flutterMynameserverPlugin = FlutterMynameserver();

  String _platformVersion = 'Unknown';
  String _nameServers = 'Unknown';

  @override
  void initState() {
    super.initState();
    initPlatformState();
  }

  Future<void> initPlatformState() async {
    String platformVersion;
    String servers;

    try {
      platformVersion = await _flutterMynameserverPlugin.getPlatformVersion() ?? 'Unknown platform version';
      servers = await _flutterMynameserverPlugin.getServers() ?? 'Unknown name servers';
    } on PlatformException {
      platformVersion = 'Failed to get platform version.';
      servers = "Failed to get name servers.";
    }

    if (!mounted) return;

    setState(() {
      _platformVersion = platformVersion;
      _nameServers = servers;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('NameServers simple app'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Running on: $_platformVersion'),
              Text('$_nameServers', style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold)),
            ],
          ),
        ),
      ),
    );
  }
}
