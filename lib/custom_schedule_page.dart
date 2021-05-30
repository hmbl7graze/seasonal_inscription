import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter/material.dart';

class CustomSchedulePage extends HookWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('通知を追加'),
        centerTitle: true,
        actions: <Widget>[
          ElevatedButton(
            onPressed: () {},
            child: const FittedBox(
              fit: BoxFit.fitWidth,
              child: Text(
                '保存',
                style: TextStyle(fontSize: 17),
              ),
            ),
          )
        ],
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Column(
            children: <Widget>[
              _createWeekdaySelectCard(context),
              Card(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      padding: const EdgeInsets.all(20),
                      alignment: Alignment.topCenter,
                      child: const Text('時間'),
                    ),
                    Container(
                      padding: const EdgeInsets.all(20),
                      child: ElevatedButton(
                        onPressed: ()async {
                          final t = await showTimePicker(
                            context: context,
                            initialTime: TimeOfDay.now(),
                          );
                          if(t != null){
                            context.read(dateTimeProvider).state = t.toString();
                          }
                        },
                        child: Text(useProvider(dateTimeProvider).state,
                          style: const TextStyle(fontSize: 25),),
                      )
                    ),
                  ]
                )
              )
            ],
          ),
        ),
      ),
    );
  }

  Card _createWeekdaySelectCard(BuildContext context){
    return Card(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(20),
            child: const Text('曜日'),
          ),
          Column(
            children: <Widget>[
              SizedBox(
                width: 200,
                child: RadioListTile(
                  controlAffinity: ListTileControlAffinity.leading,
                  title: const Text('毎週月曜日'),
                  value: 1,
                  groupValue: useProvider(weekdayProvider).state,
                  onChanged: (int value) => {
                    context.read(weekdayProvider).state = value
                  },
                ),
              ),
              SizedBox(
                width: 200,
                child: RadioListTile(
                  controlAffinity: ListTileControlAffinity.leading,
                  title: const Text('毎週火曜日'),
                  value: 2,
                  groupValue: useProvider(weekdayProvider).state,
                  onChanged: (int value) => {
                    context.read(weekdayProvider).state = value
                  },
                ),
              ),
              SizedBox(
                width: 200,
                child: RadioListTile(
                  controlAffinity: ListTileControlAffinity.leading,
                  title: const Text('毎週水曜日'),
                  value: 3,
                  groupValue: useProvider(weekdayProvider).state,
                  onChanged: (int value) => {
                    context.read(weekdayProvider).state = value
                  },
                ),
              ),
              SizedBox(
                width: 200,
                child: RadioListTile(
                  controlAffinity: ListTileControlAffinity.leading,
                  title: const Text('毎週木曜日'),
                  value: 4,
                  groupValue: useProvider(weekdayProvider).state,
                  onChanged: (int value) => {
                    context.read(weekdayProvider).state = value
                  },
                ),
              ),
              SizedBox(
                width: 200,
                child: RadioListTile(
                  controlAffinity: ListTileControlAffinity.leading,
                  title: const Text('毎週金曜日'),
                  value: 5,
                  groupValue: useProvider(weekdayProvider).state,
                  onChanged: (int value) => {
                    context.read(weekdayProvider).state = value
                  },
                ),
              ),
              SizedBox(
                width: 200,
                child: RadioListTile(
                  controlAffinity: ListTileControlAffinity.leading,
                  title: const Text('毎週土曜日'),
                  value: 6,
                  groupValue: useProvider(weekdayProvider).state,
                  onChanged: (int value) => {
                    context.read(weekdayProvider).state = value
                  },
                ),
              ),
              SizedBox(
                width: 200,
                child: RadioListTile(
                  controlAffinity: ListTileControlAffinity.leading,
                  title: const Text('毎週日曜日'),
                  value: 7,
                  groupValue: useProvider(weekdayProvider).state,
                  onChanged: (int value) => {
                    context.read(weekdayProvider).state = value
                  },
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

//曜日はTZDateTimeの仕様に従って月曜日を１とする
final weekdayProvider = StateProvider((ref) => 1);

final dateTimeProvider = StateProvider((ref) => '12:00');
