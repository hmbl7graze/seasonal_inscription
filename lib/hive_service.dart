import 'dart:math';
import 'package:hive/hive.dart';

Future<void> saveNewSchedule(int weekday, int hour, int minute) async{
  if(weekday < 1 || weekday > 7){
    return;
  }
  if(hour < 0 || hour > 23){
    return;
  }
  if(minute < 0 || minute > 59){
    return;
  }

  final box = Hive.box<List<int>>('NotificationSchedule');
  final id = Random().nextInt(99999999);//8桁のIDを生成

  List<int> idList;
  idList = box.get('IDList');
  if(idList == null){
    idList = [id];
  }
  else{
    idList.add(id);
  }

  await box.put(id, [weekday, hour, minute]);
  await box.put('IDList', idList);
}

List<int> getSchedule(int id) {
  final box = Hive.box<List<int>>('NotificationSchedule');
  return box.get(id);
}

Future<void> removeSchedule(int id) async{
  final box = Hive.box<List<int>>('NotificationSchedule');
  final idList = box.get('IDList')
    ..remove(id);
  await box.delete(id);
  await box.put('IDList', idList);
}