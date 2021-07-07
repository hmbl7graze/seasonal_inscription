import 'package:flutter/material.dart';

class CCLicensePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ライセンス情報', style: TextStyle(fontFamily: 'Hannari'),),
      ),
      body: Container(
          child: const Center(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Card(
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Text(licenseStr)),
                ),
              )
            )
          )
      ),
    );
  }
}
const String licenseStr = '本ソフトウェアのコンテンツはCC-BY-SA 3.0に準じます \n'
    'http://creativecommons.org/licenses/by-sa/3.0/ \n'
    '\n'
    'https://ja.wikipedia.org/wiki/%E6%97%A9%E6%98%A5\n'
    'https://ja.wikipedia.org/wiki/%E5%88%9D%E8%A9%A3\n'
    'https://ja.wikipedia.org/wiki/%E6%9D%BE%E9%A2%A8\n'
    'https://ja.wikipedia.org/wiki/%E8%8B%A5%E6%B0%B4\n'
    'https://ja.wikipedia.org/wiki/%E5%BD%A9%E9%9B%B2\n'
    'https://ja.wikipedia.org/wiki/%E9%AB%98%E7%A0%82_(%E8%83%BD)\n'
    'https://ja.wikipedia.org/wiki/%E7%91%9E%E9%9B%B2\n'
    'https://ja.wikipedia.org/wiki/%E8%80%81%E6%9D%BE\n'
    'https://ja.wikipedia.org/wiki/%E7%BF%81\n'
    'https://ja.wikipedia.org/wiki/%E6%9D%B1%E9%A2%A8\n'
    'https://ja.wikipedia.org/wiki/%E6%98%A5%E4%B8%80%E7%95%AA\n'
    'https://ja.wikipedia.org/wiki/%E6%B7%A1%E9%9B%AA\n'
    'https://ja.wikipedia.org/wiki/%E6%9D%B1%E9%9B%B2\n'
    'https://ja.wikipedia.org/wiki/%E9%9B%9B%E7%A5%AD%E3%82%8A\n'
    'https://ja.wikipedia.org/wiki/%E3%82%B9%E3%82%AE%E3%83%8A\n'
    'https://ja.wikipedia.org/wiki/%E8%A5%BF%E7%8E%8B%E6%AF%8D\n'
    'https://ja.wikipedia.org/wiki/%E8%8B%A5%E8%8F%9C\n'
    'https://ja.wikipedia.org/wiki/%E9%9B%9B%E7%A5%AD%E3%82%8A\n'
    'https://ja.wikipedia.org/wiki/%E7%81%8C%E4%BB%8F%E4%BC%9A\n'
    'https://ja.wikipedia.org/wiki/%E6%98%A5%E9%9B%B7\n'
    'https://ja.wikipedia.org/wiki/%E3%83%A4%E3%82%A8%E3%82%B6%E3%82%AF%E3%83%A9\n'
    'https://ja.wikipedia.org/wiki/%E9%99%BD%E7%82%8E_(%E6%B0%97%E8%B1%A1%E7%8F%BE%E8%B1%A1)\n'
    'https://ja.wikipedia.org/wiki/%E4%BD%90%E4%BF%9D%E5%A7%AB\n'
    'https://ja.wikipedia.org/wiki/%E3%83%A4%E3%83%9E%E3%82%B6%E3%82%AF%E3%83%A9\n'
    'https://ja.wikipedia.org/wiki/%E3%83%92%E3%83%90%E3%83%AA\n'
    'https://ja.wikipedia.org/wiki/%E7%81%8C%E4%BB%8F%E4%BC%9A\n'
    'https://ja.wikipedia.org/wiki/%E5%85%AB%E5%8D%81%E5%85%AB%E5%A4%9C\n'
    'https://ja.wikipedia.org/wiki/%E8%96%AB%E9%A2%A8\n'
    'https://ja.wikipedia.org/wiki/%E6%97%A9%E8%8B%97\n'
    'https://ja.wikipedia.org/wiki/%E9%B5%9C%E9%A3%BC%E3%81%84\n'
    'https://ja.wikipedia.org/wiki/%E8%8D%89%E7%AC%9B\n'
    'https://ja.wikipedia.org/wiki/%E6%B8%85%E6%B5%81\n'
    'https://ja.wikipedia.org/wiki/%E6%97%A9%E4%B9%99%E5%A5%B3\n'
    'https://ja.wikipedia.org/wiki/%E3%81%82%E3%81%8A%E3%81%B0\n'
    'https://ja.wikipedia.org/wiki/%E5%A4%8F%E8%87%B3\n'
    'https://ja.wikipedia.org/wiki/%E6%A2%85%E9%9B%A8\n'
    'https://ja.wikipedia.org/wiki/%E6%A2%85%E9%9B%A8#%E7%A9%BA%E6%A2%85%E9%9B%A8\n'
    'https://ja.wikipedia.org/wiki/%E4%BA%94%E5%8D%81%E9%88%B4%E5%B7%9D\n'
    'https://ja.wikipedia.org/wiki/%E9%B3%B4%E9%96%80\n'
    'https://ja.wikipedia.org/wiki/%E4%BA%94%E6%9C%88%E6%99%B4\n'
    'https://ja.wikipedia.org/wiki/%E4%BA%94%E6%9C%88%E9%9B%A8\n'
    'https://ja.wikipedia.org/wiki/%E6%B0%B7%E5%AE%A4\n'
    'https://ja.wikipedia.org/wiki/%E5%9C%9F%E7%94%A8\n'
    'https://ja.wikipedia.org/wiki/%E5%A4%A9%E3%81%AE%E5%B7%9D\n'
    'https://ja.wikipedia.org/wiki/%E4%B8%83%E5%A4%95\n'
    'https://ja.wikipedia.org/wiki/%E5%A4%95%E5%87%AA\n'
    'https://ja.wikipedia.org/wiki/%E4%B8%83%E5%A4%95\n'
    'https://ja.wikipedia.org/wiki/%E7%B9%94%E5%A7%AB\n'
    'https://ja.wikipedia.org/wiki/%E9%A2%A8%E9%88%B4\n'
    'https://ja.wikipedia.org/wiki/%E5%A4%95%E6%B6%BC%E3%81%BF\n'
    'https://ja.wikipedia.org/wiki/%E3%82%BB%E3%83%9F\n'
    'https://ja.wikipedia.org/wiki/%E6%B8%A6%E6%BD%AE\n'
    'https://ja.wikipedia.org/wiki/%E9%9B%B2%E6%B5%B7\n'
    'https://ja.wikipedia.org/wiki/%E5%B1%B1%E5%BD%A6\n'
    'https://ja.wikipedia.org/wiki/%E9%9D%92%E6%B5%B7%E6%B3%A2\n'
    'https://ja.wikipedia.org/wiki/%E7%AB%8B%E7%A7%8B\n'
    'https://ja.wikipedia.org/wiki/%E5%87%A6%E6%9A%91\n'
    'https://ja.wikipedia.org/wiki/%E8%9D%89%E6%99%82%E9%9B%A8\n'
    'https://ja.wikipedia.org/wiki/%E9%9B%B7\n'
    'https://ja.wikipedia.org/wiki/%E7%A9%BA%E8%9D%89\n'
    'https://ja.wikipedia.org/wiki/%E7%A9%8D%E9%9B%B2\n'
    'https://ja.wikipedia.org/wiki/%E3%82%BF%E3%83%9E%E3%82%B9%E3%83%80%E3%83%AC\n'
    'https://ja.wikipedia.org/wiki/%E3%83%92%E3%82%B0%E3%83%A9%E3%82%B7\n'
    'https://ja.wikipedia.org/wiki/%E6%B5%81%E6%98%9F\n'
    'https://ja.wikipedia.org/wiki/%E7%A7%8B%E9%A2%A8_(%E9%A7%86%E9%80%90%E8%89%A6)\n'
    'https://ja.wikipedia.org/wiki/%E5%A4%95%E7%AB%8B\n'
    'https://ja.wikipedia.org/wiki/%E3%82%AA%E3%83%9F%E3%83%8A%E3%82%A8%E3%82%B7\n'
    'https://ja.wikipedia.org/wiki/%E3%82%B5%E3%82%AB%E3%82%AD\n'
    'https://ja.wikipedia.org/wiki/%E8%8A%B1%E7%81%AB\n'
    'https://ja.wikipedia.org/wiki/%E9%9B%B2%E6%B5%B7\n'
    'https://ja.wikipedia.org/wiki/%E9%87%8D%E9%99%BD\n'
    'https://ja.wikipedia.org/wiki/%E6%9C%88%E8%A6%8B\n'
    'https://ja.wikipedia.org/wiki/%E9%87%8E%E5%88%86\n'
    'https://ja.wikipedia.org/wiki/%E8%99%AB%E3%81%AE%E9%9F%B3\n'
    'https://ja.wikipedia.org/wiki/%E3%82%B9%E3%82%BA%E3%83%A0%E3%82%B7\n'
    'https://ja.wikipedia.org/wiki/%E7%A0%A7\n'
    'https://ja.wikipedia.org/wiki/%E3%83%92%E3%82%AC%E3%83%B3%E3%83%90%E3%83%8A\n'
    'https://ja.wikipedia.org/wiki/%E3%81%8B%E3%81%8B%E3%81%97\n'
    'https://ja.wikipedia.org/wiki/%E3%83%9E%E3%83%84%E3%83%A0%E3%82%B7\n'
    'https://ja.wikipedia.org/wiki/%E3%82%B9%E3%82%B9%E3%82%AD\n'
    'https://ja.wikipedia.org/wiki/%E6%9C%89%E6%98%8E\n'
    'https://ja.wikipedia.org/wiki/%E7%99%BD%E9%9C%B2\n'
    'https://ja.wikipedia.org/wiki/%E7%AB%9C%E7%94%B0%E5%A7%AB\n'
    'https://ja.wikipedia.org/wiki/%E6%99%82%E9%9B%A8\n'
    'https://ja.wiktionary.org/wiki/%E5%B1%B1%E7%B2%A7%E3%81%86\n'
    'https://ja.wikipedia.org/wiki/%E6%AD%A6%E8%94%B5%E9%87%8E\n'
    'https://ja.wikipedia.org/wiki/%E5%B5%90%E5%B1%B1\n'
    'https://ja.wikipedia.org/wiki/%E5%BE%A1%E6%89%80%E6%9F%BF\n'
    'https://ja.wikipedia.org/wiki/%E6%9C%A8%E6%9E%AF%E3%82%89%E3%81%97\n'
    'https://ja.wikipedia.org/wiki/%E3%81%88%E3%81%B3%E3%81%99%E8%AC%9B\n'
    'https://ja.wikipedia.org/wiki/%E7%B4%85%E8%91%89%E7%8B%A9\n'
    'https://ja.wikipedia.org/wiki/%E8%90%BD%E7%A9%82%E6%8B%BE%E3%81%84\n'
    'https://ja.wikipedia.org/wiki/%E9%87%8E%E8%8F%8A\n'
    'https://ja.wikipedia.org/wiki/%E8%90%BD%E8%91%89%E6%80%A7\n'
    'https://ja.wikipedia.org/wiki/%E5%B9%B2%E3%81%97%E6%9F%BF\n'
    'https://ja.wikipedia.org/wiki/%E5%A4%A7%E9%9B%AA\n'
    'https://ja.wikipedia.org/wiki/%E6%B0%B7%E6%9F%B1\n'
    'https://ja.wikipedia.org/wiki/%E4%B8%87%E6%AD%B3\n'
    'https://ja.wikipedia.org/wiki/%E5%8D%83%E7%A7%8B%E6%A5%BD\n'
    'https://ja.wikipedia.org/wiki/%E9%9C%9C%E6%9F%B1\n'
    'https://ja.wikipedia.org/wiki/%E3%83%81%E3%83%89%E3%83%AA%E7%A7%91\n'
    'https://ja.wikipedia.org/wiki/%E3%83%9F%E3%83%8E%E3%83%A0%E3%82%B7\n'
;
