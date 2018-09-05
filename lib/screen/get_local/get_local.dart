import 'dart:async';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:xfocus_mobile/library/LocalJson.dart';

class GetLocalScreen extends StatefulWidget {
  final LocalJson storage;

  GetLocalScreen({Key key, this.storage}) : super(key: key);

  factory GetLocalScreen.withDummyData() {
    return GetLocalScreen(
      storage: LocalJson(),
    );
  }

  @override
  _GetLocalScreenState createState() => _GetLocalScreenState();
}

class _GetLocalScreenState extends State<GetLocalScreen> {
  int _counter;

  @override
  void initState() {
    super.initState();
    widget.storage.loadAsset().then((String value) {
      debugPrint('get value');
      debugPrint(value);
    });
    widget.storage.readCounter().then((int value) {
      setState(() {
        _counter = value;
      });
    });
  }

  Future<File> _incrementCounter() async {
    // String _cash;
    setState(() {
      _counter++;
    });
    try {
      String _writed;
      String _cash = await widget.storage.loadCash();
      await widget.storage.writeCash(_cash);
      _writed = await widget.storage.readCash();
      debugPrint(_writed);
      // _cash = await widget.storage.readCash();
    } catch (e) {
      // _cash = 'error data';
      debugPrint(e.toString());
    }
    // debugPrint(_cash);

    // write the variable as a string to the file
    return widget.storage.writeCounter(_counter);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Reading and Writing Files')),
      body: Center(
        child: Text(
          'Button tapped $_counter time${_counter == 1 ? '' : 's'}.',
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
