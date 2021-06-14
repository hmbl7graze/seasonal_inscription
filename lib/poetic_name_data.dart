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
}


class Data {
  Data({
    this.name,
    this.reading,
    this.detail,
    this.month,
    this.isBeginning = false,
    this.isEnd = false,
  });

  String name;
  String reading;
  String detail;
  Month month;
  bool isBeginning;
  bool isEnd;
}

final List<Data> dataList = [
  Data(name: '初春', reading: 'そうしゅん', detail: '春の初めごろ。新年。', month: Month.january, isBeginning: true, isEnd: false),
  Data(name: '初霞', reading: 'はつがすみ', detail: '新年に山野にたなびく霞', month: Month.january, isBeginning: true, isEnd: false),
  Data(name: '初詣', reading: 'はつもうで', detail: '年が明けてから初めて神社や寺院などに参拝する行事', month: Month.january, isBeginning: true, isEnd: false),
  Data(name: '松風', reading: 'まつかぜ', detail: '松林にうちつける風', month: Month.january, isBeginning: false, isEnd: true),
  Data(name: '末広', reading: 'すえひろ', detail: '扇のこと。しだいに末のほうが広がることから祝い事に用いられる。', month: Month.january, isBeginning: true, isEnd: false),
  Data(name: '立鶴', reading: 'たてづる', detail: '一羽の鶴が立っている様子', month: Month.january, isBeginning: true, isEnd: false),
  Data(name: '千年翠', reading: 'せんねんのみどり', detail: '松の木が控えめながら千年の長い歳月を経て翠を保つ様。松樹千年翠。', month: Month.january, isBeginning: true, isEnd: false),
  Data(name: '若水', reading: 'わかみず', detail: '元日の朝に初めて汲む水', month: Month.january, isBeginning: true, isEnd: false),
  Data(name: '松の内', reading: 'まつのうち', detail: '正月に門松を飾っておく期間', month: Month.january, isBeginning: true, isEnd: false),
  Data(name: '松過ぎ', reading: 'まつすぎ', detail: '正月の松飾りを取り払った後のこと', month: Month.january, isBeginning: false, isEnd: true),
  Data(name: '大寒', reading: 'だいかん', detail: '一年で最も寒い時期。２４節気の一つ。', month: Month.january, isBeginning: false, isEnd: true),
  Data(name: '山眠る', reading: 'やまねむる', detail: '冬の山がいかにも眠っているように静まりかえる様子', month: Month.january, isBeginning: false, isEnd: true),
  Data(name: '福寿草', reading: 'ふくじゅそう', detail: '春の訪れを告げる花。元日草。朔日草。', month: Month.january, isBeginning: true, isEnd: false),
  Data(name: '初日', reading: 'はつひ', detail: '初日の出のこと', month: Month.january, isBeginning: true, isEnd: false),
  Data(name: '彩雲', reading: 'さいうん', detail: '太陽の近くを通りがかった雲が、赤や緑に彩られる現象。めでたいことの前兆とされる。', month: Month.january, isBeginning: true, isEnd: false),
  Data(name: '千歳', reading: 'ちとせ', detail: '「鶴は千年、亀は万年」の言い伝えにちなんだ縁起のいい言葉', month: Month.january, isBeginning: true, isEnd: false),
  Data(name: '高砂', reading: 'たかさご', detail: '能の作品の一つ。夫婦円満と長寿の縁起物とされる。', month: Month.january, isBeginning: true, isEnd: false),
  Data(name: '初音', reading: 'はつね', detail: '竹で作る鳥笛。正月の縁起物。', month: Month.january, isBeginning: true, isEnd: false),
  Data(name: '初茜', reading: 'はつあかね', detail: '元日の夜明け前に茜色に染まった空', month: Month.january, isBeginning: true, isEnd: false),
  Data(name: '瑞雲', reading: 'ずいうん', detail: 'めでたい兆しとして出現する、紫色や五色の珍しい雲', month: Month.january, isBeginning: true, isEnd: true),
  Data(name: '宝珠', reading: 'ほうじゅ', detail: '仏教において願いを叶えるとされる縁起物', month: Month.january, isBeginning: true, isEnd: false),
  Data(name: '霧氷', reading: 'むひょう', detail: '氷点下の環境で霧が樹木に吹き付けることで白く凍りついたもの', month: Month.january, isBeginning: true, isEnd: true),
  Data(name: '梅が枝', reading: 'うめがえ', detail: '正月に宮中で行われた儀式。梅が枝うたう。', month: Month.january, isBeginning: true, isEnd: false),
  Data(name: '幾千代', reading: 'いくちよ', detail: '何世代にも長きにわたる時間の流れ', month: Month.january, isBeginning: true, isEnd: true),
  Data(name: '老松', reading: 'おいまつ', detail: '長い年月を経た松。転じて、人物や組織の末長い繁栄を願う象徴。', month: Month.january, isBeginning: true, isEnd: true),
  Data(name: '翁', reading: 'おきな', detail: '正月に演じられる能の演目', month: Month.january, isBeginning: true, isEnd: false),
  Data(name: '鶴寿', reading: 'かくじゅ', detail: '長寿のこと。鶴が長生きすることから。', month: Month.january, isBeginning: true, isEnd: true),
  Data(name: '松韻', reading: 'しょういん', detail: '松林にうちつける風の音', month: Month.january, isBeginning: true, isEnd: true),
  Data(name: '常盤', reading: 'ときわ', detail: '永久不変であること', month: Month.january, isBeginning: true, isEnd: false),
  Data(name: '初笑', reading: 'はつわらい', detail: '新年初めての笑い', month: Month.january, isBeginning: true, isEnd: false),
  Data(name: '春駒', reading: 'はるこま', detail: '正月に各戸を回り、馬の首の形をしたものを持って歌い踊ること', month: Month.january, isBeginning: true, isEnd: false),

  Data(name: '節分', reading: 'せつぶん', detail: '立春の前日に行われる厄除けの行事', month: Month.february, isBeginning: true, isEnd: false),
  Data(name: '立春', reading: 'りっしゅん', detail: '春の始まり。二十四節気の一つ。', month: Month.february, isBeginning: true, isEnd: false),
  Data(name: '春浅し', reading: 'はるあさし', detail: '立春を過ぎてから日が浅く、十分に春が整っていない様', month: Month.february, isBeginning: true, isEnd: false),
  Data(name: '春雪', reading: 'しゅんせつ', detail: '立春を過ぎてから降る雪', month: Month.february, isBeginning: true, isEnd: true),
  Data(name: '残雪', reading: 'ざんせつ', detail: '立春を過ぎてからも残る雪', month: Month.february, isBeginning: true, isEnd: true),
  Data(name: '春嵐', reading: 'はるあらし', detail: '春に吹き荒れる強い風', month: Month.february, isBeginning: true, isEnd: true),
  Data(name: '東風', reading: 'こち', detail: '春に東から吹いてくる風', month: Month.february, isBeginning: true, isEnd: true),
  Data(name: '寒梅', reading: 'かんばい', detail: '寒い中花を咲かせる梅', month: Month.february, isBeginning: false, isEnd: true),
  Data(name: '雪解', reading: 'ゆきげ', detail: '春になり雪が溶けること', month: Month.february, isBeginning: false, isEnd: true),
  Data(name: '早梅', reading: 'はやうめ', detail: '寒い中花を咲かせる梅', month: Month.february, isBeginning: true, isEnd: false),
  Data(name: '玉椿', reading: 'たまつばき', detail: '椿の美称', month: Month.february, isBeginning: true, isEnd: false),
  Data(name: '谷渡り', reading: 'たにわたり', detail: '春先の鶯の鳴き声。ホーホケキョ。', month: Month.february, isBeginning: true, isEnd: true),
  Data(name: '下萌', reading: 'したもえ', detail: '枯れ草の下から草の芽が萌え出る様子', month: Month.february, isBeginning: false, isEnd: true),
  Data(name: '末黒野', reading: 'すぐろの', detail: '春に野焼きを行った後の様子', month: Month.february, isBeginning: true, isEnd: true),
  Data(name: '鶯笛', reading: 'うぐいすぶえ', detail: '鶯の囀りに似た音を出す竹製の笛', month: Month.february, isBeginning: true, isEnd: true),
  Data(name: '早春', reading: 'そうしゅん', detail: '立春のあと、寒さが厳しい中で春の気配を感じられるころ', month: Month.february, isBeginning: true, isEnd: true),
  Data(name: '草萌', reading: 'くさもえ', detail: '草の芽が萌え出る様子', month: Month.february, isBeginning: false, isEnd: true),
  Data(name: '春光', reading: 'しゅんこう', detail: '春のやわらかな陽射し。また、その景色。', month: Month.february, isBeginning: true, isEnd: true),
  Data(name: '春霞', reading: 'はるがすみ', detail: '春に霧や霞によって、景色がぼやけて見える状態。', month: Month.february, isBeginning: false, isEnd: true),
  Data(name: '紅梅', reading: 'こうばい', detail: '赤い花を咲かせる梅', month: Month.february, isBeginning: false, isEnd: true),
  Data(name: '雪峰', reading: 'せっぽう', detail: '雪に覆われた山', month: Month.february, isBeginning: true, isEnd: false),
  Data(name: '雛鶴', reading: 'ひなづる', detail: '鶴のひな', month: Month.february, isBeginning: false, isEnd: true),
  Data(name: '窓の雪', reading: 'まどのゆき', detail: '苦学すること。雪明かりで勉学に励んだという故事が由来。', month: Month.february, isBeginning: true, isEnd: false),
  Data(name: '寒仕込', reading: 'かんじこみ', detail: '冬の寒い時期に日本酒や味噌を仕込むこと', month: Month.february, isBeginning: true, isEnd: false),
  Data(name: '梅花', reading: 'ばいか', detail: '梅の花', month: Month.february, isBeginning: true, isEnd: true),

  Data(name: '春分', reading: 'しゅんぶん', detail: '日が長くなっていき、本格的に春の到来を感じる頃。二十四節気の一つ。', month: Month.march, isBeginning: false, isEnd: true),
  Data(name: '春暁', reading: 'しゅんぎょう', detail: '春の日の明け方の様子', month: Month.march, isBeginning: false, isEnd: true),
  Data(name: '朧夜', reading: 'おぼろよ', detail: 'おぼろに霞んだ夜の様子', month: Month.march, isBeginning: true, isEnd: true),
  Data(name: '春風', reading: 'しゅんぷう', detail: '春に吹く穏やかな風', month: Month.march, isBeginning: false, isEnd: true),
  Data(name: '春一番', reading: 'はるいちばん', detail: '春先に吹く南寄りの強い風', month: Month.march, isBeginning: true, isEnd: false),
  Data(name: '淡雪', reading: 'あわゆき', detail: '春先のふわふわした消えやすい雪', month: Month.march, isBeginning: true, isEnd: false),
  Data(name: '雪間', reading: 'ゆきま', detail: '雪が溶けて地面が覗く様子', month: Month.march, isBeginning: true, isEnd: false),
  Data(name: '彼岸西風', reading: 'ひがんにし', detail: '春の彼岸の頃に吹く西風', month: Month.march, isBeginning: false, isEnd: true),
  Data(name: '日永', reading: 'ひなが', detail: '春になり、日が長くなること', month: Month.march, isBeginning: false, isEnd: true),
  Data(name: '曲水', reading: 'きょくすい', detail: '三月三日に宮中で行われていた行事', month: Month.march, isBeginning: true, isEnd: false),
  Data(name: '朧月', reading: 'おぼろづき', detail: '月がおぼろに霞んで見える様子', month: Month.march, isBeginning: true, isEnd: true),
  Data(name: '東雲', reading: 'しののめ', detail: '夜明け前に茜色にそまる空', month: Month.march, isBeginning: true, isEnd: true),
  Data(name: '青柳', reading: 'あおやぎ', detail: '青々と芽吹き出した柳', month: Month.march, isBeginning: false, isEnd: true),
  Data(name: '帰雁', reading: 'きがん', detail: '雁が春に北へ帰って行くこと', month: Month.march, isBeginning: true, isEnd: true),
  Data(name: '引鶴', reading: 'ひきつる', detail: '鶴が春に北へ帰って行くこと', month: Month.march, isBeginning: true, isEnd: true),
  Data(name: '菜種梅雨', reading: 'なたねつゆ', detail: '菜の花が咲く頃に降る長雨', month: Month.march, isBeginning: false, isEnd: true),
  Data(name: '早蕨', reading: 'さわらび', detail: 'わらびが芽を出した様子', month: Month.march, isBeginning: true, isEnd: false),
  Data(name: '花暦', reading: 'はなごよみ', detail: '花の咲く季節や名所を記した暦', month: Month.march, isBeginning: true, isEnd: true),
  Data(name: '花衣', reading: 'はなごろも', detail: 'お花見の際に女性が着る晴れ着', month: Month.march, isBeginning: true, isEnd: true),
  Data(name: '花だより', reading: 'はなだより', detail: '桜の花の開花状況を知らせる便り', month: Month.march, isBeginning: true, isEnd: true),
  Data(name: '山霞', reading: 'やまがすみ', detail: '山に霞がかかっている様子', month: Month.march, isBeginning: true, isEnd: true),
  Data(name: '若草', reading: 'わかくさ', detail: '芽を出したところの柔らかな草', month: Month.march, isBeginning: false, isEnd: true),
  Data(name: '五人囃子', reading: 'ごにんばやし', detail: '雛人形の一つ。能のお囃子を奏でる5人の楽人', month: Month.march, isBeginning: true, isEnd: false),
  Data(name: '好日', reading: 'こうじつ', detail: '日柄のいい日', month: Month.march, isBeginning: true, isEnd: true),
  Data(name: '土筆', reading: 'つくし', detail: '春に見られるスギナの胞子茎', month: Month.march, isBeginning: true, isEnd: true),
  Data(name: '春の野', reading: 'はるのの', detail: '雪が溶けて、草木が芽吹いた活き活きとした野原の様子', month: Month.march, isBeginning: false, isEnd: true),
  Data(name: '西王母', reading: 'せいおうぼ', detail: '中国で信仰される女神。西王母の持つ桃を食べると不老不死になると言われる。', month: Month.march, isBeginning: true, isEnd: true),
  Data(name: '遠霞', reading: 'とおがすみ', detail: '遠くがぼんやりと霞む様子', month: Month.march, isBeginning: false, isEnd: true),
  Data(name: '若菜', reading: 'わかな', detail: '初春に採れる山菜類のこと', month: Month.march, isBeginning: true, isEnd: false),
  Data(name: '初筏', reading: 'はついかだ', detail: '木材業者が初荷が届いたことを祝って組む筏のこと', month: Month.march, isBeginning: true, isEnd: false),
  Data(name: '雛祭', reading: 'ひなまつり', detail: '女子の健やかな成長を祈る節句の年中行事', month: Month.march, isBeginning: true, isEnd: false),

  Data(name: '仏生会', reading: 'ぶっしょうえ', detail: '釈迦の誕生を祝う仏教行事。4月8日に行われる。花祭ともいう。', month: Month.april, isBeginning: true, isEnd: false),
  Data(name: '春眠', reading: 'しゅんみん', detail: '春は暖かく思わずよく寝てしまうこと', month: Month.april, isBeginning: true, isEnd: false),
  Data(name: '山笑う', reading: 'やまわらう', detail: '春になり草木が芽吹くことで山々が色づく様子', month: Month.april, isBeginning: true, isEnd: true),
  Data(name: '春雷', reading: 'しゅんらい', detail: '春に鳴る雷のこと', month: Month.april, isBeginning: true, isEnd: true),
  Data(name: '胡蝶', reading: 'こちょう', detail: '蝶の異称', month: Month.april, isBeginning: true, isEnd: true),
  Data(name: '八重霞', reading: 'やえがすみ', detail: 'かすみが深い様子', month: Month.april, isBeginning: true, isEnd: true),
  Data(name: '曙', reading: 'あけぼの', detail: '夜がほのぼのと明け始めるころ', month: Month.april, isBeginning: true, isEnd: true),
  Data(name: '花冷', reading: 'はなびえ', detail: '桜が咲くころに急に寒くなること', month: Month.april, isBeginning: true, isEnd: false),
  Data(name: '八重桜', reading: 'やえざくら', detail: '八重咲きになる桜のこと', month: Month.april, isBeginning: true, isEnd: false),
  Data(name: '陽炎', reading: 'かげろう', detail: '良く晴れた陽射しの強い日に地面から立ち上るもやもやとしたゆらめきのこと', month: Month.april, isBeginning: false, isEnd: true),
  Data(name: '花明', reading: 'はなあかり', detail: '桜の花が満開で夜の闇の中でもうっすらと見えること', month: Month.april, isBeginning: true, isEnd: false),
  Data(name: '夜桜', reading: 'よざくら', detail: '夜に見る桜のこと', month: Month.april, isBeginning: true, isEnd: false),
  Data(name: '吉野山', reading: 'よしのやま', detail: '奈良県の桜の名所', month: Month.april, isBeginning: true, isEnd: false),
  Data(name: '花吹雪', reading: 'はなふぶき', detail: '桜の花が一斉に散っていくさま', month: Month.april, isBeginning: false, isEnd: true),
  Data(name: '葉桜', reading: 'はざくら', detail: '花が散り若葉となった桜', month: Month.april, isBeginning: false, isEnd: true),
  Data(name: '佐保姫', reading: 'さほひめ', detail: '平城京の東に位置する佐保山に宿る春の女神', month: Month.april, isBeginning: true, isEnd: true),
  Data(name: '花の雲', reading: 'はなのくも', detail: '桜の花が満開に咲いている様子', month: Month.april, isBeginning: true, isEnd: false),
  Data(name: '菫', reading: 'すみれ', detail: '春に咲く深い紫の花', month: Month.april, isBeginning: true, isEnd: true),
  Data(name: '山桜', reading: 'やまざくら', detail: '山地に自生する桜。品種を指すこともある。', month: Month.april, isBeginning: true, isEnd: true),
  Data(name: '芝桜', reading: 'しばざくら', detail: '地面を覆い尽くすように密生し、桜のような花を咲かせる植物', month: Month.april, isBeginning: true, isEnd: true),
  Data(name: '雲雀', reading: 'ひばり', detail: '春を告げると言われる鳥', month: Month.april, isBeginning: true, isEnd: true),
  Data(name: '花車', reading: 'はなぐるま', detail: '花で飾った車のこと', month: Month.april, isBeginning: true, isEnd: false),
  Data(name: '忘れ雪', reading: 'わすれゆき', detail: '春になっても残っている雪', month: Month.april, isBeginning: true, isEnd: false),
  Data(name: '玉柳', reading: 'たまやなぎ', detail: '柳の美称', month: Month.april, isBeginning: true, isEnd: true),
  Data(name: '花祭', reading: 'はなまつり', detail: '釈迦の誕生を祝う仏教行事。4月8日に行われる。仏生会ともいう。', month: Month.april, isBeginning: true, isEnd: false),

  Data(name: '八十八夜', reading: 'はちじゅうはちや', detail: '立春から数えて88日目の夜。5月2日ごろになる。', month: Month.may, isBeginning: true, isEnd: false),
  Data(name: '薫風', reading: 'くんぷう', detail: '初夏の若葉や青葉の香りを含んだ穏やかな風', month: Month.may, isBeginning: true, isEnd: true),
  Data(name: '早苗', reading: 'さなえ', detail: '苗代から田へ植えかえるころの稲の苗のこと', month: Month.may, isBeginning: true, isEnd: true),
  Data(name: '苔清水', reading: 'こけしみず', detail: '苔の間を流れる清らかな水', month: Month.may, isBeginning: true, isEnd: true),
  Data(name: '鵜飼', reading: 'うかい', detail: '飼い慣らした鵜を使って鮎などを獲る伝統的な漁法', month: Month.may, isBeginning: true, isEnd: true),
  Data(name: '青嵐', reading: 'あおあらし', detail: '青葉のころに吹くやや強い風', month: Month.may, isBeginning: true, isEnd: true),
  Data(name: '石清水', reading: 'いわしみず', detail: '岩陰から流れる清らかな水', month: Month.may, isBeginning: true, isEnd: true),
  Data(name: '草笛', reading: 'くさぶえ', detail: '草の茎や葉を巻いたりして吹く笛', month: Month.may, isBeginning: true, isEnd: true),
  Data(name: '雲の峰', reading: 'くものみね', detail: '山の峰のようにそびえ立つ積雲', month: Month.may, isBeginning: false, isEnd: true),
  Data(name: '清流', reading: 'せいりゅう', detail: '清らかな水の流れ', month: Month.may, isBeginning: false, isEnd: true),
  Data(name: '八橋', reading: 'やつはし', detail: '在原業平の句に詠まれた土地の名前', month: Month.may, isBeginning: true, isEnd: true),
  Data(name: '若楓', reading: 'わかかえで', detail: '楓の若葉のこと', month: Month.may, isBeginning: false, isEnd: true),
  Data(name: '青雲', reading: 'せいうん', detail: 'よく晴れた青い空', month: Month.may, isBeginning: true, isEnd: true),
  Data(name: '早乙女', reading: 'さおとめ', detail: '田植えの日に苗を田に植える女性', month: Month.may, isBeginning: true, isEnd: false),
  Data(name: '唐衣', reading: 'からごろも', detail: '平安貴族の女性の薄着。在原業平の歌に出てくる。', month: Month.may, isBeginning: true, isEnd: false),
  Data(name: '青々', reading: 'あおあお', detail: '若葉が茂って山の緑が濃くなった様子', month: Month.may, isBeginning: false, isEnd: true),
  Data(name: '杜若', reading: 'かきつばた', detail: '5月から6月に咲く花。端午の節句で飾る。花菖蒲。', month: Month.may, isBeginning: false, isEnd: true),
  Data(name: '青葉', reading: 'あおば', detail: '初夏に芽吹く若葉', month: Month.may, isBeginning: false, isEnd: true),
  Data(name: '花菖蒲', reading: 'はなしょうぶ', detail: '5月から6月に咲く花。端午の節句で飾る。杜若。', month: Month.may, isBeginning: false, isEnd: true),
  Data(name: '青苔', reading: 'あおごけ', detail: '青色の苔', month: Month.may, isBeginning: true, isEnd: true),
  Data(name: '藤波', reading: 'ふじなみ', detail: '藤の花が風に吹かれて揺れ動く様子', month: Month.may, isBeginning: true, isEnd: false),
  Data(name: '水鶏', reading: 'くひな', detail: '河川や水田に生息する鳥。独特の鳴き声は「水鶏たたく」と呼ばれる。', month: Month.may, isBeginning: true, isEnd: true),
  Data(name: '岩藤', reading: 'いわふじ', detail: '5月から6月にかけて咲く紫色の花', month: Month.may, isBeginning: false, isEnd: true),

  Data(name: '夏至', reading: 'げし', detail: '一年のうちで最も昼の時間が長いころ。二十四節気の一つ。', month: Month.june, isBeginning: false, isEnd: true),
  Data(name: '梅雨', reading: 'つゆ', detail: '6月ごろに来る曇りや雨の多い期間のこと', month: Month.june, isBeginning: true, isEnd: true),
  Data(name: '空梅雨', reading: 'からつゆ', detail: 'ほとんど雨が降らない梅雨のこと', month: Month.june, isBeginning: true, isEnd: true),
  Data(name: '白南風', reading: 'しろはえ', detail: '梅雨の終わりに南側から吹く風', month: Month.june, isBeginning: false, isEnd: true),
  Data(name: '漁火', reading: 'いさりび', detail: '魚を誘き寄せるために船でたく火', month: Month.june, isBeginning: true, isEnd: true),
  Data(name: '五十鈴川', reading: 'いすずがわ', detail: '三重県伊勢市を流れる川。古くから清流とされる。', month: Month.june, isBeginning: true, isEnd: true),
  Data(name: '山法師', reading: 'やまぼうし', detail: '6月から7月に花を咲かせる高木', month: Month.june, isBeginning: false, isEnd: true),
  Data(name: '緑風', reading: 'りょくふう', detail: '初夏に吹く風', month: Month.june, isBeginning: true, isEnd: true),
  Data(name: '瀑布', reading: 'ばくふ', detail: '滝のこと', month: Month.june, isBeginning: true, isEnd: true),
  Data(name: '涼一味', reading: 'りょういちみ', detail: '夏の暑い中で感じる涼しい瞬間', month: Month.june, isBeginning: false, isEnd: true),
  Data(name: '緑蔭', reading: 'りょくいん', detail: '青々と茂った木の木陰', month: Month.june, isBeginning: true, isEnd: true),
  Data(name: '清遊', reading: 'せいゆう', detail: '世俗を離れて風流な遊びをすること', month: Month.june, isBeginning: true, isEnd: true),
  Data(name: '紫陽花', reading: 'あじさい', detail: '6月から7月に花をつける低木', month: Month.june, isBeginning: true, isEnd: true),
  Data(name: '朝顔', reading: 'あさがお', detail: 'じょうご型の花をつける蔓性の植物', month: Month.june, isBeginning: true, isEnd: false),
  Data(name: '蛍舟', reading: 'ほたるぶね', detail: '蛍狩りをするための舟', month: Month.june, isBeginning: false, isEnd: true),
  Data(name: '蛍狩り', reading: 'ほたるがり', detail: '蛍の飛び回る景色を楽しむ遊び', month: Month.june, isBeginning: false, isEnd: true),
  Data(name: '長雨', reading: 'ながあめ', detail: '数日にわたって降り続く雨', month: Month.june, isBeginning: true, isEnd: true),
  Data(name: '雨宿', reading: 'あまやどり', detail: '雨が止むまで軒下などで待つこと', month: Month.june, isBeginning: true, isEnd: true),
  Data(name: '浮舟', reading: 'うきふね', detail: '水面に船が漂っている様子', month: Month.june, isBeginning: true, isEnd: true),
  Data(name: '鹿の子', reading: 'かのこ', detail: '夏に産まれる鹿の子供のこと', month: Month.june, isBeginning: false, isEnd: true),
  Data(name: '渓声', reading: 'けいせい', detail: '谷川の流れる音', month: Month.june, isBeginning: true, isEnd: true),
  Data(name: 'せせらぎ', reading: 'せせらぎ', detail: '浅瀬を流れる水の音', month: Month.june, isBeginning: true, isEnd: true),
  Data(name: '鳴門', reading: 'なると', detail: '潮流が音を鳴らすほど激しい海峡', month: Month.june, isBeginning: true, isEnd: true),
  Data(name: '御手洗', reading: 'みたらし', detail: '土用の丑の頃に下鴨神社で行われる神事。みたらし祭。', month: Month.june, isBeginning: false, isEnd: true),
  Data(name: '腰蓑', reading: 'こしみの', detail: '藁を編んで作られる下半身を覆う外衣', month: Month.june, isBeginning: true, isEnd: true),
  Data(name: '山雲', reading: 'やまぐも', detail: '山にかかる雲', month: Month.june, isBeginning: true, isEnd: true),
  Data(name: '洗心', reading: 'せんしん', detail: '心の汚れを清めるという意味の禅語', month: Month.june, isBeginning: true, isEnd: true),
  Data(name: '翡翠', reading: 'かわせみ', detail: '渓流で魚を獲る翡翠色の鳥', month: Month.june, isBeginning: true, isEnd: true),
  Data(name: '河鹿', reading: 'かじか', detail: '渓流などに生息する美しい声で鳴くかえる', month: Month.june, isBeginning: true, isEnd: true),
  Data(name: '若竹', reading: 'わかたけ', detail: '夏になり生えてくる竹のこと', month: Month.june, isBeginning: true, isEnd: true),
  Data(name: '五月晴', reading: 'さつきばれ', detail: '旧暦5月の梅雨時に見られる晴れ間のこと', month: Month.june, isBeginning: true, isEnd: false),
  Data(name: '五月雨', reading: 'さみだれ', detail: '旧暦5月ごろの雨。梅雨。', month: Month.june, isBeginning: true, isEnd: true),

  Data(name: '氷室', reading: 'ひむろ', detail: '冬場にできた天然の氷を溶けないように保管する施設', month: Month.july, isBeginning: true, isEnd: true),
  Data(name: '土用', reading: 'どよう', detail: '四立（立夏・立秋・立冬・立春）の直前の約18日間のこと。主に夏の土用を指す。', month: Month.july, isBeginning: true, isEnd: false),
  Data(name: '遣水', reading: 'やりみず', detail: '庭園の外から水を引き込むこと', month: Month.july, isBeginning: true, isEnd: true),
  Data(name: '天の河', reading: 'あまのがわ', detail: '夜空を横切るように存在する雲状の光の帯のこと', month: Month.july, isBeginning: true, isEnd: false),
  Data(name: '星祭', reading: 'ほしまつり', detail: '旧暦の7月7日の夜に行われる行事。七夕。', month: Month.july, isBeginning: true, isEnd: false),
  Data(name: '深緑', reading: 'しんりょく', detail: '初夏の頃の若葉のみずみずしい緑色', month: Month.july, isBeginning: true, isEnd: true),
  Data(name: '笹舟', reading: 'ささぶね', detail: '笹の葉で作った舟', month: Month.july, isBeginning: true, isEnd: false),
  Data(name: '山滴る', reading: 'やましたたる', detail: '夏に山の木々が瑞々しく生き生きとしている様子', month: Month.july, isBeginning: true, isEnd: true),
  Data(name: '夏子立', reading: 'なつこだち', detail: '夏に木々が葉を青々と茂らせる様子', month: Month.july, isBeginning: false, isEnd: true),
  Data(name: '夕凪', reading: 'ゆうなぎ', detail: '海辺の地域で、夕方に起こる無風の状態', month: Month.july, isBeginning: true, isEnd: true),
  Data(name: '山清水', reading: 'やましみず', detail: '山に流れる清らかな水', month: Month.july, isBeginning: true, isEnd: true),
  Data(name: '七夕', reading: 'たなばた', detail: '旧暦の7月7日の夜に行われる行事', month: Month.july, isBeginning: true, isEnd: false),
  Data(name: '織姫', reading: 'おりひめ', detail: '七夕の伝説に登場する仙女', month: Month.july, isBeginning: true, isEnd: false),
  Data(name: '風鈴', reading: 'ふうりん', detail: '夏に家の軒下などに吊り下げて用いられる小型の鐘鈴', month: Month.july, isBeginning: true, isEnd: true),
  Data(name: '夕涼み', reading: 'ゆうすずみ', detail: '夏の暑かった1日の夕暮れに戸外で涼をとること', month: Month.july, isBeginning: false, isEnd: true),
  Data(name: '夏衣', reading: 'なつごろも', detail: '夏に着る衣服', month: Month.july, isBeginning: true, isEnd: true),
  Data(name: '青田', reading: 'あおた', detail: '夏が深まり稲が育ってきた水田', month: Month.july, isBeginning: false, isEnd: true),
  Data(name: '涼扇', reading: 'りょうせん', detail: '夏場に涼をとるための扇', month: Month.july, isBeginning: true, isEnd: true),
  Data(name: '夏野', reading: 'なつの', detail: '夏の風が抜けるような青々とした草原の景色', month: Month.july, isBeginning: false, isEnd: true),
  Data(name: '蝉', reading: 'せみ', detail: '夏に大きな声で鳴く昆虫', month: Month.july, isBeginning: false, isEnd: true),
  Data(name: '渦潮', reading: 'うずしお', detail: '渦を巻いて激しく流れる海水', month: Month.july, isBeginning: true, isEnd: true),
  Data(name: '舟遊び', reading: 'ふなあそび', detail: '舟の上で涼をとること', month: Month.july, isBeginning: true, isEnd: true),
  Data(name: '夕顔', reading: 'ゆうがお', detail: '夕暮れに白い花を咲かせる花', month: Month.july, isBeginning: true, isEnd: false),
  Data(name: '雲の海', reading: 'くものうみ', detail: '高い山から見下ろしたとき雲を海に喩える表現', month: Month.july, isBeginning: true, isEnd: true),
  Data(name: '山彦', reading: 'やまびこ', detail: '山や谷の斜面に向かって音を発したとき、それが反響して遅れて返って来る現象', month: Month.july, isBeginning: true, isEnd: true),
  Data(name: '青海波', reading: 'せいがいは', detail: '半円形を三重に重ね、波のように反復させた模様', month: Month.july, isBeginning: true, isEnd: true),

  Data(name: '立秋', reading: 'りっしゅう', detail: '夏が極まり秋の気配が立ち始める日。二十四節気の一つ。', month: Month.august, isBeginning: true, isEnd: false),
  Data(name: '処暑', reading: 'しょしょ', detail: '暑さが峠を越えて後退し始めるころ。二十四節気の一つ。', month: Month.august, isBeginning: false, isEnd: true),
  Data(name: '初嵐', reading: 'はつあらし', detail: '秋になって初めて吹く風', month: Month.august, isBeginning: false, isEnd: true),
  Data(name: '蝉時雨', reading: 'せみしぐれ', detail: '多くのセミが一斉に鳴きたてる声を時雨の降る音に見立てた語', month: Month.august, isBeginning: true, isEnd: true),
  Data(name: '星月夜', reading: 'ほしづきよ', detail: 'よく晴れて星の光が月のように明るい夜', month: Month.august, isBeginning: true, isEnd: true),
  Data(name: '面影', reading: 'おもかげ', detail: '心の中で思い浮かべる姿', month: Month.august, isBeginning: true, isEnd: true),
  Data(name: '稲妻', reading: 'いなづま', detail: '秋の荒天時に空に走る閃光', month: Month.august, isBeginning: false, isEnd: true),
  Data(name: '空蝉', reading: 'うつせみ', detail: '蝉の抜け殻', month: Month.august, isBeginning: true, isEnd: true),
  Data(name: '積雲', reading: 'せきうん', detail: '晴れた日によく発生する、綿のような形をした雲', month: Month.august, isBeginning: true, isEnd: true),
  Data(name: '苔筵', reading: 'こけむしろ', detail: '苔が一面に広がり敷物のようになっている様子', month: Month.august, isBeginning: true, isEnd: true),
  Data(name: '撫子', reading: 'なでしこ', detail: '秋の七草の一つ', month: Month.august, isBeginning: false, isEnd: true),
  Data(name: '玉簾', reading: 'たますだれ', detail: '夏〜初秋に白い花を咲かせる。白い小さな花を「玉」に、葉が集まっている様子を「簾」に例えたことに由来する。', month: Month.august, isBeginning: false, isEnd: true),
  Data(name: '蜩', reading: 'ひぐらし', detail: 'カナカナと鳴く蝉の一種', month: Month.august, isBeginning: false, isEnd: true),
  Data(name: '流星', reading: 'りゅうせい', detail: '夜間に天空のある点で生じた光が一定の距離を移動して消える現象', month: Month.august, isBeginning: true, isEnd: true),
  Data(name: '秋風', reading: 'あきかぜ', detail: '立秋に秋の気配を感じさせる風', month: Month.august, isBeginning: false, isEnd: true),
  Data(name: '夕立', reading: 'ゆうだち', detail: '夏の午後から夕方にかけてよく見られる天気', month: Month.august, isBeginning: true, isEnd: true),
  Data(name: '浦風', reading: 'うらかぜ', detail: '海辺に吹く風', month: Month.august, isBeginning: true, isEnd: true),
  Data(name: '女郎花', reading: 'おみなえし', detail: '秋の七草の一つ。敗醤。', month: Month.august, isBeginning: false, isEnd: true),
  Data(name: '榊', reading: 'さかき', detail: '神棚や祭壇に供えるなど神事にも用いられる植物', month: Month.august, isBeginning: true, isEnd: false),
  Data(name: '忍草', reading: 'しのぶぐさ', detail: '多年草のシダ植物の一種', month: Month.august, isBeginning: true, isEnd: false),
  Data(name: '花火', reading: 'はなび', detail: '火薬と金属の粉末を混ぜて包んだものに火をつけて、燃焼・破裂時の音や色を楽しむもの', month: Month.august, isBeginning: true, isEnd: true),
  Data(name: '露草', reading: 'つゆくさ', detail: '朝咲いた花が昼しぼむことが朝露を連想させる植物', month: Month.august, isBeginning: true, isEnd: false),
  Data(name: '雲海', reading: 'うんかい', detail: '高い山から見下ろしたとき雲を海に喩える表現', month: Month.august, isBeginning: true, isEnd: true),
  Data(name: '涼風', reading: 'すずかぜ', detail: '夏の終わりに吹く涼しい風', month: Month.august, isBeginning: false, isEnd: true),

  Data(name: '重陽', reading: 'ちょうよう', detail: '五節句の一つで、9月9日のこと。菊が咲く季節であることから菊の節句とも呼ばれる。', month: Month.september, isBeginning: true, isEnd: false),
  Data(name: '秋分', reading: 'しゅうぶん', detail: '昼と夜の長さがほぼ同じになるころ。二十四節気の一つ。', month: Month.september, isBeginning: false, isEnd: true),
  Data(name: '満月', reading: 'まんげつ', detail: '丸く満ちた月のこと', month: Month.september, isBeginning: true, isEnd: false),
  Data(name: '待宵', reading: 'まつよい', detail: '十五夜の前日の夜のこと', month: Month.september, isBeginning: true, isEnd: true),
  Data(name: '十五夜', reading: 'じゅうごや', detail: '旧暦8月15日の夜のことで、月を鑑賞する風習がある', month: Month.september, isBeginning: true, isEnd: true),
  Data(name: '十六夜', reading: 'いざよい', detail: '十五夜の次の日の夜のこと', month: Month.september, isBeginning: true, isEnd: true),
  Data(name: '月の雫', reading: 'つきのしずく', detail: '露のこと', month: Month.september, isBeginning: true, isEnd: true),
  Data(name: '野分', reading: 'のわけ', detail: '台風の古称。野の草を吹き分ける強い風。', month: Month.september, isBeginning: true, isEnd: false),
  Data(name: '初雁', reading: 'はつかり', detail: 'その年初めて来たから渡ってきた雁', month: Month.september, isBeginning: false, isEnd: true),
  Data(name: '虫の音', reading: 'むしのね', detail: '虫の鳴く声', month: Month.september, isBeginning: true, isEnd: true),
  Data(name: '秋の声', reading: 'あきのこえ', detail: '秋になって聞こえてくる風や虫などの自然の音', month: Month.september, isBeginning: true, isEnd: true),
  Data(name: '鈴虫', reading: 'すずむし', detail: '秋の夜の鳴き声が楽しむ対象とされる昆虫', month: Month.september, isBeginning: true, isEnd: true),
  Data(name: '秋の水', reading: 'あきのみず', detail: '秋の澄み切った水', month: Month.september, isBeginning: true, isEnd: true),
  Data(name: '秋の野', reading: 'あきのの', detail: '秋の草原のこと', month: Month.september, isBeginning: true, isEnd: true),
  Data(name: '砧', reading: 'きぬた', detail: '生乾きの洗濯物をたたいて伸ばすための台', month: Month.september, isBeginning: true, isEnd: true),
  Data(name: '彼岸花', reading: 'ひがんばな', detail: '秋の彼岸の頃に咲く、花茎の先に強く反り返った鮮やかな赤い花', month: Month.september, isBeginning: false, isEnd: true),
  Data(name: '秋空', reading: 'あきぞら', detail: '秋の澄み切った空', month: Month.september, isBeginning: true, isEnd: true),
  Data(name: '案山子', reading: 'かかし', detail: '田や畑などの中に設置して、作物を荒らす鳥などの害獣を追い払うための田畑に立てる竹やわらなどで作った人形', month: Month.september, isBeginning: true, isEnd: false),
  Data(name: '秋草', reading: 'あきくさ', detail: '秋に花を咲かせる草', month: Month.september, isBeginning: true, isEnd: true),
  Data(name: '松虫', reading: 'まつむし', detail: '秋に「チンチロリン」と鳴く昆虫', month: Month.september, isBeginning: true, isEnd: true),
  Data(name: '虫籠', reading: 'むしかご', detail: '虫を入れておくかご', month: Month.september, isBeginning: true, isEnd: true),
  Data(name: '菊重', reading: 'きくがさね', detail: '菊の花を重ねた模様', month: Month.september, isBeginning: true, isEnd: true),
  Data(name: '藤袴', reading: 'ふじばかま', detail: '秋に咲く藤色の花。秋の七草の一つ。', month: Month.september, isBeginning: true, isEnd: false),
  Data(name: '尾花', reading: 'おばな', detail: 'ススキや茅などとも呼ばれる。秋の七草の一つ。', month: Month.september, isBeginning: true, isEnd: true),
  Data(name: '有明', reading: 'ありあけ', detail: '夜明けのこと', month: Month.september, isBeginning: true, isEnd: true),
  Data(name: '雁が音', reading: 'かりがね', detail: '雁の鳴き声。また雁自体を指すこともある。', month: Month.september, isBeginning: true, isEnd: false),
  Data(name: '雁鳴く', reading: 'かりなく', detail: '雁が鳴く様子', month: Month.september, isBeginning: true, isEnd: false),
  Data(name: '芝の戸', reading: 'しばのと', detail: '芝を編んで作った戸', month: Month.september, isBeginning: true, isEnd: true),
  Data(name: '宵闇', reading: 'よいやみ', detail: '月の出が遅く、暗い宵のこと', month: Month.september, isBeginning: true, isEnd: true),
  Data(name: '白露', reading: 'はくろ', detail: '大気が冷えてきて、露ができ始めるころ。二十四節気の一つ。', month: Month.september, isBeginning: false, isEnd: true),

  Data(name: '金風', reading: 'きんぷう', detail: '秋に吹く風', month: Month.october, isBeginning: true, isEnd: false),
  Data(name: '夜寒', reading: 'よさむ', detail: '秋が深まり夜の寒さが際立つこと', month: Month.october, isBeginning: false, isEnd: true),
  Data(name: '竜田姫', reading: 'たつたひめ', detail: '平城京の西に位置する竜田山に宿る秋の女神', month: Month.october, isBeginning: true, isEnd: true),
  Data(name: '残月', reading: 'ざんげつ', detail: '夜明けの頃に見える月', month: Month.october, isBeginning: true, isEnd: false),
  Data(name: '夕紅葉', reading: 'ゆうもみじ', detail: '夕日に映える紅葉', month: Month.october, isBeginning: false, isEnd: true),
  Data(name: '時雨', reading: 'しぐれ', detail: '秋から冬にかけて起こる、一時的に降ったり止んだりする雨', month: Month.october, isBeginning: false, isEnd: true),
  Data(name: '二季鳥', reading: 'にきどり', detail: '秋に北方からやってきて、春に帰る雁のこと', month: Month.october, isBeginning: false, isEnd: true),
  Data(name: '山粧う', reading: 'やまよそおう', detail: '紅葉で美しく飾ったような秋の山を形容する言葉', month: Month.october, isBeginning: true, isEnd: true),
  Data(name: '村時雨', reading: 'むらしぐれ', detail: '一時的に激しく振って通り過ぎる雨', month: Month.october, isBeginning: true, isEnd: true),
  Data(name: '武蔵野', reading: 'むさしの', detail: '関東の一地域を指す地名。月の名所。', month: Month.october, isBeginning: true, isEnd: false),
  Data(name: '嵐山', reading: 'あらしやま', detail: '京都市西部の地名。紅葉の名所。', month: Month.october, isBeginning: false, isEnd: true),
  Data(name: '嵯峨野', reading: 'さがの', detail: '京都市西部の広い地域を指す地名', month: Month.october, isBeginning: true, isEnd: true),
  Data(name: '豊年', reading: 'ほうねん', detail: '農作物が平年より多く収穫できること。豊作。', month: Month.october, isBeginning: true, isEnd: true),
  Data(name: '夜長', reading: 'よなが', detail: '秋になり夜の時間が長いこと', month: Month.october, isBeginning: true, isEnd: true),
  Data(name: '八重菊', reading: 'やえぎく', detail: '八重咲きの菊のこと', month: Month.october, isBeginning: true, isEnd: true),
  Data(name: '秋の山', reading: 'あきのやま', detail: '秋に山が紅葉で色づく様子', month: Month.october, isBeginning: true, isEnd: true),
  Data(name: '御所柿', reading: 'ごしょがき', detail: '奈良県御所市原産の甘柿', month: Month.october, isBeginning: true, isEnd: true),
  Data(name: '露時雨', reading: 'つゆしぐれ', detail: '一面に梅雨が降りて時雨が降った後のようになること', month: Month.october, isBeginning: true, isEnd: true),
  Data(name: '初紅葉', reading: 'はつこうよう', detail: 'その年初めての紅葉', month: Month.october, isBeginning: false, isEnd: true),
  Data(name: '山路の秋', reading: 'やまじのあき', detail: '秋に紅葉した山の道', month: Month.october, isBeginning: false, isEnd: true),
  Data(name: '小柴垣', reading: 'こしばがき', detail: '細い芝で作る生垣', month: Month.october, isBeginning: true, isEnd: false),
  Data(name: '残菊', reading: 'ざんぎく', detail: '重陽の節句を過ぎた後に咲いている菊', month: Month.october, isBeginning: false, isEnd: true),
  Data(name: '山景', reading: 'さんけい', detail: '山の景色', month: Month.october, isBeginning: true, isEnd: false),
  Data(name: '薄紅葉', reading: 'うすもみじ', detail: '薄く色づいた紅葉', month: Month.october, isBeginning: false, isEnd: true),
  Data(name: '秋晴', reading: 'あきばれ', detail: '青々と澄んだ秋の空', month: Month.october, isBeginning: true, isEnd: true),
  Data(name: '秋時雨', reading: 'あきしぐれ', detail: '秋の終わりの頃に降る時雨', month: Month.october, isBeginning: false, isEnd: true),

  Data(name: '木枯し', reading: 'こがらし', detail: '晩秋から初冬にかけて吹く北寄りの強い風', month: Month.november, isBeginning: false, isEnd: true),
  Data(name: '初冬', reading: 'しょとう', detail: '冬の初めのころ', month: Month.november, isBeginning: true, isEnd: false),
  Data(name: '冬めく', reading: 'ふゆめく', detail: '晩秋に冬の気配が感じられる頃', month: Month.november, isBeginning: true, isEnd: false),
  Data(name: '霜枯れ', reading: 'しもがれ', detail: '冬に草木が霜で枯れること', month: Month.november, isBeginning: false, isEnd: true),
  Data(name: '夷講', reading: 'えびすこう', detail: '神無月に出雲に赴かない「留守神」とされたえびす神を祀るお祭り', month: Month.november, isBeginning: false, isEnd: true),
  Data(name: '紅葉狩', reading: 'もみじがり', detail: '紅葉を見物する行楽', month: Month.november, isBeginning: true, isEnd: true),
  Data(name: '錦秋', reading: 'きんしゅう', detail: '紅葉が錦のように美しい秋', month: Month.november, isBeginning: true, isEnd: true),
  Data(name: '山の錦', reading: 'やまのにしき', detail: '山の紅葉が錦のように美しい様子', month: Month.november, isBeginning: true, isEnd: true),
  Data(name: '落穂', reading: 'おちぼ', detail: '穀物の収穫の後に田畑に穂が散らばる様子', month: Month.november, isBeginning: true, isEnd: false),
  Data(name: '野菊', reading: 'のぎく', detail: '山野に咲く菊', month: Month.november, isBeginning: true, isEnd: true),
  Data(name: '小倉山', reading: 'おぐらやま', detail: '京都市西部の嵐山の向かいにある紅葉の名所', month: Month.november, isBeginning: true, isEnd: true),
  Data(name: '楓', reading: 'かえで', detail: '秋に紅葉する落葉高木。もみじ。', month: Month.november, isBeginning: true, isEnd: true),
  Data(name: '落葉', reading: 'らくよう', detail: '落葉樹が秋から冬にかけて葉を落とすこと', month: Month.november, isBeginning: false, isEnd: true),
  Data(name: '閑居', reading: 'かんきょ', detail: '世俗から離れて心静かに暮らすこと', month: Month.november, isBeginning: true, isEnd: true),
  Data(name: '唐錦', reading: 'からにしき', detail: '中国から渡来した錦。また、そのように美しい紅葉。', month: Month.november, isBeginning: true, isEnd: true),
  Data(name: '吊るし柿', reading: 'つるしがき', detail: 'そのままでは食べられない渋柿を干して干し柿を作っている様子', month: Month.november, isBeginning: true, isEnd: true),
  Data(name: '梢の錦', reading: 'こずえのにしき', detail: '樹木の先端が紅葉で色づいている様子', month: Month.november, isBeginning: true, isEnd: true),
  Data(name: '山居', reading: 'さんきょ', detail: '山の中の住まい', month: Month.november, isBeginning: true, isEnd: true),
  Data(name: '三夕', reading: 'さんせき', detail: '「秋の夕暮れ」を結びにした3首の名歌', month: Month.november, isBeginning: true, isEnd: true),
  Data(name: '時雨傘', reading: 'しぐれがさ', detail: '時雨の時にさす傘', month: Month.november, isBeginning: true, isEnd: true),
  Data(name: '柴庵', reading: 'しばのいおり', detail: '芝で作られたいおり', month: Month.november, isBeginning: true, isEnd: true),
  Data(name: '散紅葉', reading: 'ちりもみじ', detail: 'もみじが散りゆく様子', month: Month.november, isBeginning: false, isEnd: true),
  Data(name: '千歳松', reading: 'ちとせのまつ', detail: '松の寿命が長いことから長寿の意味', month: Month.november, isBeginning: true, isEnd: true),
  Data(name: '秋色', reading: 'あきいろ', detail: '秋らしい色', month: Month.november, isBeginning: true, isEnd: true),
  Data(name: '秋霜', reading: 'あきしも', detail: '秋の厳しい霜', month: Month.november, isBeginning: false, isEnd: true),
  Data(name: '酒林', reading: 'さかばやし', detail: '新酒ができたことを知らせるために軒下に吊るすもの', month: Month.november, isBeginning: true, isEnd: true),

  Data(name: '冬至', reading: 'とうじ', detail: '一年のうち最も昼の時間が短いころ。二十四節気の一つ。', month: Month.december, isBeginning: false, isEnd: true),
  Data(name: '大雪', reading: 'おおゆき', detail: '雪が激しく降り始めるころ。二十四節気の一つ。', month: Month.december, isBeginning: true, isEnd: false),
  Data(name: '冬木立', reading: 'ふゆこだち', detail: '冬になり落葉した木々のこと', month: Month.december, isBeginning: true, isEnd: true),
  Data(name: '冬籠', reading: 'ふゆごもり', detail: '動物や植物が冬の間、寒さに耐えるためにために籠ること', month: Month.december, isBeginning: true, isEnd: true),
  Data(name: '冬至粥', reading: 'とうじがゆ', detail: '冬至の日に食べる小豆粥', month: Month.december, isBeginning: false, isEnd: true),
  Data(name: '薄氷', reading: 'うすごおり', detail: '薄く張った氷', month: Month.december, isBeginning: true, isEnd: true),
  Data(name: '氷柱', reading: 'つらら', detail: '建物の軒下や岩場などから棒状に伸びた氷', month: Month.december, isBeginning: true, isEnd: true),
  Data(name: '初氷', reading: 'はつごおり', detail: 'その年初めて池や川が凍ること', month: Month.december, isBeginning: true, isEnd: true),
  Data(name: '氷花', reading: 'こおりばな', detail: '木や草に水分が凍って白い花のように見えること', month: Month.december, isBeginning: true, isEnd: true),
  Data(name: '年忘れ', reading: 'としわすれ', detail: 'その一年にあった苦労を忘れること', month: Month.december, isBeginning: false, isEnd: true),
  Data(name: '短日', reading: 'たんじつ', detail: '冬の昼間が短いこと', month: Month.december, isBeginning: true, isEnd: true),
  Data(name: '無事', reading: 'ぶじ', detail: '何事もないこと', month: Month.december, isBeginning: false, isEnd: true),
  Data(name: '年の瀬', reading: 'としのせ', detail: 'その年の終わりのころ', month: Month.december, isBeginning: false, isEnd: true),
  Data(name: '師走', reading: 'しわす', detail: '12月のこと', month: Month.december, isBeginning: true, isEnd: true),
  Data(name: '晩鐘', reading: 'ばんしょう', detail: '寺院や教会などで夕方に鳴らす鐘', month: Month.december, isBeginning: true, isEnd: true),
  Data(name: '万歳', reading: 'ばんざい', detail: '喜びや祝いを表す動作', month: Month.december, isBeginning: false, isEnd: true),
  Data(name: '冬野', reading: 'ふゆの', detail: '冬のもの寂しい野原のこと', month: Month.december, isBeginning: true, isEnd: true),
  Data(name: '寒月', reading: 'かんげつ', detail: '寒い冬の夜に冴え渡る月', month: Month.december, isBeginning: true, isEnd: true),
  Data(name: '初霜', reading: 'はつしも', detail: 'その冬初めて降りる霜', month: Month.december, isBeginning: true, isEnd: true),
  Data(name: '初雪', reading: 'はつゆき', detail: 'その冬初めて降りる雪', month: Month.december, isBeginning: true, isEnd: true),
  Data(name: '千秋楽', reading: 'せんしゅうらく', detail: '複数日にわたって同じ演目を行う興行の最終日', month: Month.december, isBeginning: false, isEnd: true),
  Data(name: '霜柱', reading: 'しもばしら', detail: '氷点下になる時に、地中の水分が毛細管現象によって地表にしみ出して柱状に凍結したもの', month: Month.december, isBeginning: false, isEnd: true),
  Data(name: '千鳥', reading: 'ちどり', detail: '野山や水辺に群れる小鳥たちのこと', month: Month.december, isBeginning: true, isEnd: true),
  Data(name: '寒菊', reading: 'かんぎく', detail: '晩秋から冬にかけて咲く菊の一種', month: Month.december, isBeginning: true, isEnd: false),
  Data(name: '朝の雪', reading: 'あさのゆき', detail: '朝に降り積もった雪', month: Month.december, isBeginning: true, isEnd: true),
  Data(name: '暮雪', reading: 'くれゆき', detail: '雪の降った中、日が暮れていくこと', month: Month.december, isBeginning: true, isEnd: true),
  Data(name: '夕千鳥', reading: 'ゆうちどり', detail: '夕方に飛んでいる千鳥', month: Month.december, isBeginning: true, isEnd: true),
  Data(name: '忙中閑', reading: 'ぼうちゅうかん', detail: '忙しい中にも少しの暇があるということ。忙中閑あり。', month: Month.december, isBeginning: true, isEnd: true),
  Data(name: '蓑虫', reading: 'みのむし', detail: '作る巣が藁で作った雨具「蓑」に似た蛾の幼虫', month: Month.december, isBeginning: true, isEnd: false),
  Data(name: '一陽来復', reading: 'いちようらいふく', detail: '冬至を過ぎて日脚が長くなる様子', month: Month.december, isBeginning: false, isEnd: true),
];