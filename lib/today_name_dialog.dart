import 'dart:math'as math;
import 'package:flutter/material.dart';
import 'poetic_name_data.dart';

Future showTodayNameDialog(BuildContext context) async {
  return showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      final now = DateTime.now();
      final month = getMonth(now.month);
      Iterable<Data> filteredDataList;
      if(now.day < 16){
        filteredDataList = dataList.where((element) =>
          element.month == month && element.isBeginning == true);
      }
      else{
        filteredDataList = dataList.where((element) =>
          element.month == month && element.isEnd == true);
      }
      final random = math.Random();
      final data = filteredDataList.elementAt(
          random.nextInt(filteredDataList.length));
      return AlertDialog(
        content: Card(
          elevation: 0,
          child: ConstrainedBox(
            constraints: const BoxConstraints(
              maxHeight: 200,
            ),
            child: Column(
              children: [
                ListTile(
                  title: Text(data.name,
                    style: const TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 40)),
                  subtitle: Text(data.reading),
                ),
                ListTile(
                  title: Text(data.detail),
                )
              ],
            ),
          ),
        ),
        title: const Text('今日のおすすめは...'),
        actions: <Widget>[
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('閉じる'),
          ),
        ],
      );
    },
  );
}