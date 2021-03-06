import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'hive_service.dart';
import 'poetic_name_data.dart';

class Item {
  Item({
    this.data,
    this.isExpanded = false,
  });

  Data data;
  bool isExpanded;
}

class MonthlyItemListState extends StateNotifier<List<Item>> {
  MonthlyItemListState(List<Item> list) : super(list);

  void expandPanel(int index){
    final tempItemList = state;
    tempItemList[index].isExpanded = true;
    state = tempItemList;
  }
  void closePanel(int index){
    final tempItemList = state;
    tempItemList[index].isExpanded = false;
    state = tempItemList;
  }
  void refresh(Month month){
    state = generateItems(month);
  }
}

List<Item> generateItems(Month month) {
  final monthlyDataList
  = getIsPurchase() ?
  dataList.where((Data data) => data.month == month).toList() :
  dataList.where(
    (Data data) => data.month == month && data.needPurchase == false)
      .toList();
  return List<Item>.generate(monthlyDataList.length, (int index) {
    return Item(
      data: monthlyDataList[index],
    );
  });
}

final januaryListProvider =
StateNotifierProvider<MonthlyItemListState, List<Item>>
  ((ref) => MonthlyItemListState(generateItems(Month.january)));

final februaryListProvider =
StateNotifierProvider<MonthlyItemListState, List<Item>>
  ((ref) => MonthlyItemListState(generateItems(Month.february)));

final marchListProvider =
StateNotifierProvider<MonthlyItemListState, List<Item>>
  ((ref) => MonthlyItemListState(generateItems(Month.march)));

final aprilListProvider =
StateNotifierProvider<MonthlyItemListState, List<Item>>
  ((ref) => MonthlyItemListState(generateItems(Month.april)));

final mayListProvider =
StateNotifierProvider<MonthlyItemListState, List<Item>>
  ((ref) => MonthlyItemListState(generateItems(Month.may)));

final juneListProvider =
StateNotifierProvider<MonthlyItemListState, List<Item>>
  ((ref) => MonthlyItemListState(generateItems(Month.june)));

final julyListProvider =
StateNotifierProvider<MonthlyItemListState, List<Item>>
  ((ref) => MonthlyItemListState(generateItems(Month.july)));

final augustListProvider =
StateNotifierProvider<MonthlyItemListState, List<Item>>
  ((ref) => MonthlyItemListState(generateItems(Month.august)));

final septemberListProvider =
StateNotifierProvider<MonthlyItemListState, List<Item>>
  ((ref) => MonthlyItemListState(generateItems(Month.september)));

final octoberListProvider =
StateNotifierProvider<MonthlyItemListState, List<Item>>
  ((ref) => MonthlyItemListState(generateItems(Month.october)));

final novemberListProvider =
StateNotifierProvider<MonthlyItemListState, List<Item>>
  ((ref) => MonthlyItemListState(generateItems(Month.november)));

final decemberListProvider =
StateNotifierProvider<MonthlyItemListState, List<Item>>
  ((ref) => MonthlyItemListState(generateItems(Month.december)));

final isPurchaseProvider = StateProvider((ref) => false);
