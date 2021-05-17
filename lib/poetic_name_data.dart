enum Month{
  january,
  february,
  march,
  april,
  may,
  june,
  july,
  august,
  september,
  october,
  november,
  december,
  allSeason,
}


class Data {
  Data({
    this.name,
    this.detail,
    this.month,
    this.isBeginning = false,
    this.isMiddle = false,
    this.isEnd = false,
  });

  String name;
  String detail;
  Month month;
  bool isBeginning;
  bool isMiddle;
  bool isEnd;
}

final List<Data> dataList = [
  Data(name: '初春', detail: 'はつはる。春のはじめ。新春。新年。',
      month: Month.january, isBeginning: true, isMiddle: false, isEnd: false),
  Data(name: '松の内', detail: 'まつのうち。元日から十五日まで松飾りをしている間をいう。',
      month: Month.january, isBeginning: true, isMiddle: false, isEnd: false),
  Data(name: '早春', detail: 'そうしゅん。春のはじめ。初春。',
      month: Month.february, isBeginning: true, isMiddle: false, isEnd: false),
  Data(name: '春浅し', detail: 'はるあさし。早春よりも春めいたかんじではあるが、まだ寒さが残る頃。浅春。',
      month: Month.february, isBeginning: true, isMiddle: false, isEnd: false),
  Data(name: '春社', detail: 'しゅんしゃ。春の社日。',
      month: Month.march, isBeginning: true, isMiddle: false, isEnd: false),
  Data(name: '春暁', detail: 'しゅんぎょう。春のあかつき。春の夜明け。',
      month: Month.march, isBeginning: true, isMiddle: false, isEnd: false),
  Data(name: '春暁', detail: 'しゅんぎょう。春のあかつき。春の夜明け。',
      month: Month.april, isBeginning: true, isMiddle: false, isEnd: false),
  Data(name: '春暁', detail: 'しゅんぎょう。春のあかつき。春の夜明け。',
      month: Month.april, isBeginning: true, isMiddle: false, isEnd: false),
  Data(name: '春暁', detail: 'しゅんぎょう。春のあかつき。春の夜明け。',
      month: Month.may, isBeginning: true, isMiddle: false, isEnd: false),
  Data(name: '春暁', detail: 'しゅんぎょう。春のあかつき。春の夜明け。',
      month: Month.may, isBeginning: true, isMiddle: false, isEnd: false),
  Data(name: '春暁', detail: 'しゅんぎょう。春のあかつき。春の夜明け。',
      month: Month.june, isBeginning: true, isMiddle: false, isEnd: false),
  Data(name: '春暁', detail: 'しゅんぎょう。春のあかつき。春の夜明け。',
      month: Month.june, isBeginning: true, isMiddle: false, isEnd: false),
  Data(name: '春暁', detail: 'しゅんぎょう。春のあかつき。春の夜明け。',
      month: Month.july, isBeginning: true, isMiddle: false, isEnd: false),
  Data(name: '春暁', detail: 'しゅんぎょう。春のあかつき。春の夜明け。',
      month: Month.july, isBeginning: true, isMiddle: false, isEnd: false),
  Data(name: '春暁', detail: 'しゅんぎょう。春のあかつき。春の夜明け。',
      month: Month.august, isBeginning: true, isMiddle: false, isEnd: false),
  Data(name: '春暁', detail: 'しゅんぎょう。春のあかつき。春の夜明け。',
      month: Month.august, isBeginning: true, isMiddle: false, isEnd: false),
  Data(name: '春暁', detail: 'しゅんぎょう。春のあかつき。春の夜明け。',
      month: Month.september, isBeginning: true, isMiddle: false, isEnd: false),
  Data(name: '春暁', detail: 'しゅんぎょう。春のあかつき。春の夜明け。',
      month: Month.september, isBeginning: true, isMiddle: false, isEnd: false),
  Data(name: '春暁', detail: 'しゅんぎょう。春のあかつき。春の夜明け。',
      month: Month.october, isBeginning: true, isMiddle: false, isEnd: false),
  Data(name: '春暁', detail: 'しゅんぎょう。春のあかつき。春の夜明け。',
      month: Month.october, isBeginning: true, isMiddle: false, isEnd: false),
  Data(name: '春暁', detail: 'しゅんぎょう。春のあかつき。春の夜明け。',
      month: Month.november, isBeginning: true, isMiddle: false, isEnd: false),
  Data(name: '春暁', detail: 'しゅんぎょう。春のあかつき。春の夜明け。',
      month: Month.november, isBeginning: true, isMiddle: false, isEnd: false),
  Data(name: '春暁', detail: 'しゅんぎょう。春のあかつき。春の夜明け。',
      month: Month.december, isBeginning: true, isMiddle: false, isEnd: false),
  Data(name: '春暁', detail: 'しゅんぎょう。春のあかつき。春の夜明け。',
      month: Month.december, isBeginning: true, isMiddle: false, isEnd: false),
];