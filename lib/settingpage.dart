import 'package:sprintf/sprintf.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:seasonal_inscription/hive_service.dart';
import 'custom_schedule_page.dart';

class SettingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('通知設定'),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.all(32),
        child: Center(
          child: Column(
            children: <Widget>[
              ValueListenableBuilder<Box<List<int>>>(
                valueListenable:
                  Hive.box<List<int>>('NotificationSchedule').listenable(),
                builder: (context, Box<List<int>> box, widget){
                  final idList = box.get('IDList');
                  if(idList == null)
                    {
                      return Container();
                    }
                  return Column(
                    children: idList.map((int id){
                      final schedule = getScheduleString(getSchedule(id));
                      return Card(
                        child: ListTile(
                          title: Text(schedule),
                          trailing: IconButton(
                            icon: const Icon(Icons.delete),
                            onPressed: ()async{
                              await removeSchedule(id);
                            },
                          ),
                        )
                      );
                    }).toList()
                  );
                },
              ),
              FloatingActionButton(
                onPressed: () =>  Navigator.push(
                  context,
                  MaterialPageRoute<void>(
                    builder: (context) => CustomSchedulePage(),
                    fullscreenDialog: true,
                  ),
                ),
                child: const Icon(Icons.add),
              )
            ],
          ),
        ),
      ),
    );
  }
}

String getScheduleString(List<int> schedule){
  return
    sprintf(
      '毎週%s %02i:%02i',
      [weekdayStringFromInt(schedule[0]), schedule[1], schedule[2]]
    );
}

String weekdayStringFromInt(int weekday){
  switch(weekday){
    case 1:
      return '月曜日';
    case 2:
      return '火曜日';
    case 3:
      return '水曜日';
    case 4:
      return '木曜日';
    case 5:
      return '金曜日';
    case 6:
      return '土曜日';
    case 7:
      return '日曜日';
    default:
      return '月曜日';
  }
}