import 'package:flutter/material.dart';

class SettingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('通知設定'),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(32.0),
        child: Center(
          child: Column(
            children: <Widget>[
              const Card(
                child: const ListTile(
                  title: Text('毎週月曜日　18時'),
                  trailing: Icon(Icons.delete),
                )
              ),
              const Card(
                  child: const ListTile(
                    title: Text('毎週水曜日　17時'),
                    trailing: Icon(Icons.delete),
                  )
              ),
              FloatingActionButton(
                onPressed: () {},
                child: const Icon(Icons.add),
              )
            ],
          ),
        ),
      ),
    );
  }
}