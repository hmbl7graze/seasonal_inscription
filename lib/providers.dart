import 'package:hooks_riverpod/hooks_riverpod.dart';
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
}

List<Item> generateItems(Month month) {
  final monthlyDataList
  = dataList.where((Data data) => data.month == month).toList();
  return List<Item>.generate(monthlyDataList.length, (int index) {
    return Item(
      data: monthlyDataList[index],
    );
  });
}

final januaryListProvider =
StateNotifierProvider((ref) =>
    MonthlyItemListState(generateItems(Month.january)));

final februaryListProvider =
StateNotifierProvider((ref) =>
    MonthlyItemListState(generateItems(Month.february)));

final marchListProvider =
StateNotifierProvider((ref) =>
    MonthlyItemListState(generateItems(Month.march)));
