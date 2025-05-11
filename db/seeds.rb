Yaku.destroy_all

Yaku.create!(
  name: '門前自摸',
  reading: 'メンゼンツモ',
  description: 'ポン・チーなど、鳴かずにツモあがると成立する役です。',
  han: '1',
  open_han: nil,
  menzen_only: '門前役',
  photo: "メンゼンツも.jpg"
)

Yaku.create!(
  name: '立直',
  reading: 'リーチ',
  description: 'テンパイしている時に「リーチ」と宣言し、捨て牌に横向きに置くことで成立する役です。また、場に1000点を出さなければならない',
  han: '1',
  open_han: nil,
  menzen_only: '門前役',
  photo: "立直.jpg"
)

Yaku.create!(
  name: '一発',
  reading: 'イッパツ',
  description: 'リーチ後、鳴きの無い1巡以内にあがると成立する役です。次の自分のツモを含めて1巡です。',
  han: '1',
  open_han: nil,
  menzen_only: '門前役',
  photo: "一発.jpg"
)

Yaku.create!(
  name: '断ヤオ九',
  reading: 'タンヤオ',
  description: '２〜８の牌のみで揃えると成立する役です。',
  han: '1',
  open_han: '1',
  menzen_only: nil,
  photo: "タンヤオ.jpg"
)

Yaku.create!(
  name: '平和',
  reading: 'ピンフ',
  description: "下記を満たしている時に成立する役です。4面子が順子（連番で揃えた面子）で構成されている。頭は役牌（白元牌、場風牌、自風牌）以外。和了牌の待ち方は両面待ち。",
  han: '1',
  open_han: nil,
  menzen_only: '門前役',
  photo: "pinfu.jpg"
)

Yaku.create!(
  name: '一盃口',
  reading: 'イーペイコー',
  description: '同じ順子（連番で揃えた面子）が２つあると成立する役です。',
  han: '1',
  open_han: nil,
  menzen_only: '門前役',
  photo: "一盃口.jpg"
)

Yaku.create!(
  name: '三元牌',
  reading: 'サンゲンパイ',
  description: '『白（ハク）、發（ハツ）、中（チュン）』のいずれかが3枚以上揃うと成立する役です。',
  han: '1',
  open_han: '1',
  menzen_only: '鳴き可',
  photo: "三元牌.jpg"
)

Yaku.create!(
  name: '風牌',
  reading: 'カゼハイ',
  description: '場の風（東場は東（トン））、自分の風（親から反時計回りに東、南、西、北）のいずれかが3枚以上揃うと成立する役です。',
  han: '1',
  open_han: '1',
  menzen_only: '鳴き可',
  photo: "風牌.jpg"
)

Yaku.create!(
  name: '槍槓',
  reading: 'チャンカン',
  description: '他家が加槓（ポンしている牌にももう1枚加えて槓）した牌であがると成立する役です。',
  han: '1',
  open_han: '1',
  menzen_only: '鳴き可',
  photo: nil
)

Yaku.create!(
  name: '嶺上開花',
  reading: 'リンシャンカイホウ',
  description: 'カンをした際にツモる嶺上牌であがると成立する役です。',
  han: '1',
  open_han: '1',
  menzen_only: '鳴き可',
  photo: "リンシャンカイホウ.jpg"
)

Yaku.create!(
  name: '海底撈月',
  reading: 'ハイテイラオユエ',
  description: '局の最後の牌でツモあがると成立する役です。',
  han: '1',
  open_han: '1',
  menzen_only: '鳴き可',
  photo: nil
)

Yaku.create!(
  name: '河底撈魚',
  reading: 'ホウテイラオユイ',
  description: '局の最後の打牌であがると成立する役です。',
  han: '1',
  open_han: '1',
  menzen_only: '鳴き可',
  photo: nil
)

Yaku.create!(
  name: 'ダブル立直',
  reading: 'ダブルリーチ',
  description: '鳴きのない1巡目でテンパイしている時に「リーチ」と宣言することで成立する役です。',
  han: '2',
  open_han: nil,
  menzen_only: '門前役',
  photo: "wri.jpg"
)

Yaku.create!(
  name: '七対子',
  reading: 'チートイツ',
  description: '対子（同じ牌が２つある形）が７組あると成立する役です。',
  han: '2',
  open_han: nil,
  menzen_only: '門前役',
  photo: "七対子.jpg"
)

Yaku.create!(
  name: '連風牌',
  reading: 'レンプウハイ',
  description: '場の風（東場は東）、と自分の風（親から反時計回りに東、南、西、北）が同じ時に、３枚以上揃うと成立する役です。',
  han: "2",
  open_han: 2,
  menzen_only: '鳴き可',
  photo: "dabuton.jpg"
)

Yaku.create!(
  name: '対々和',
  reading: 'トイトイホー',
  description: '４面子を刻子（同じ牌３つで揃えた面子）や槓子（同じ牌４つを揃え積した面子）で揃えると成立する役です。',
  han: "2",
  open_han: 2,
  menzen_only: '鳴き可',
  photo: "トイトイ.jpg"
)

Yaku.create!(
  name: '三暗刻',
  reading: 'サンアンコウ',
  description: '暗刻（手牌で同じ牌３つ揃えた面子）や暗槓の槓子（手牌で同じ牌４つを揃え積した面子）を３つ揃えると成立する役です。',
  han: "2",
  open_han: 2,
  menzen_only: '鳴き可',
  photo: "三暗刻.jpg"
)

Yaku.create!(
  name: '三色同刻',
  reading: 'サンショクドウコウ',
  description: '萬子、筒子、索子の同じ数字で刻子（同じ牌３つで揃えた面子）や槓子（同じ牌４つを揃え積した面子）を揃えると成立する役です。',
  han: "2",
  open_han: 2,
  menzen_only: '鳴き可',
  photo: "3色どうこう.jpg"
)

Yaku.create!(
  name: '三色同順',
  reading: 'サンショクドウジュン',
  description: '萬子、筒子、索子で同じ順子（連番で揃えた面子）を揃えると成立する役です。',
  han: "2",
  open_han: '1',
  menzen_only: '鳴き可',
  photo: "sansyokudoujun.jpg"
)

Yaku.create!(
  name: '混老頭',
  reading: 'ホンロウトウ',
  description: '字牌と、１・９牌（両方もしくは片方）で揃えると成立する役です。',
  han: "2",
  open_han: 2,
  menzen_only: '鳴き可',
  photo: "ホンロー.jpg"
)

Yaku.create!(
  name: '一気通貫',
  reading: 'イッキツウカン',
  description: '1つの種類で123、456、789の順子（連番で揃えた面子）を揃えると成立する役です。',
  han: "2",
  open_han: 1,
  menzen_only: '鳴き可',
  photo: "いっつー.jpg"
)

Yaku.create!(
  name: '全帯么九',
  reading: 'チャンタ',
  description: '面子と頭すべて、字牌と、1・9牌（両方もしくは片方）を含めて揃えると成立する役です。',
  han: "2",
  open_han: 1,
  menzen_only: '鳴き可',
  photo: "チャンタ.jpg"
)

Yaku.create!(
  name: '小三元',
  reading: 'ショウサンゲン',
  description: '白・發・中のいずれか1つを頭、他の2つを刻子（同じ牌3つで揃えた面子）や槓子（同じ牌4つを揃え積した面子）で揃えると成立する役です。',
  han: "2",
  open_han: 2,
  menzen_only: '鳴き可',
  photo: "小三元.jpg"
)

Yaku.create!(
  name: '三槓子',
  reading: 'サンカンツ',
  description: '槓子（同じ牌4つを揃え積した面子）を3つ揃えると成立する役です。',
  han: "2",
  open_han: 2,
  menzen_only: '鳴き可',
  photo: "三槓子.jpg"
)

Yaku.create!(
  name: '混一色',
  reading: 'ホンイーソー',
  description: '萬子、筒子、索子の1種類と、字牌で揃えると成立する役です。',
  han: "3",
  open_han: 2,
  menzen_only: '鳴き可',
  photo: "混一色.jpg"
)

Yaku.create!(
  name: '純全帯ヤオ九',
  reading: 'ジュンチャン',
  description: '面子と頭すべて、1・9牌（両方もしくは片方）を含めて揃えると成立する役です。',
  han: "3",
  open_han: 2,
  menzen_only: '鳴き可',
  photo: "juntyan.jpg"
)

Yaku.create!(
  name: '二盃口',
  reading: 'リャンペイコー',
  description: '一盃口（同じ順子を2つ）を2組み揃えると成立する役です。',
  han: "3",
  open_han: nil,
  menzen_only: '門前役',
  photo: "二盃口.jpg"
)

Yaku.create!(
  name: '流し満貫',
  reading: 'ナガシマンガン',
  description: '自分の捨牌がすべて1・9・字牌で流局すると成立する役です。捨牌を他家に鳴かれると成立しません。',
  han: "5",
  open_han: 5,
  menzen_only: '門前役',
  photo: "流し満貫.jpg"
)

Yaku.create!(
  name: '清一色',
  reading: 'チンイーソー',
  description: '萬子、筒子、索子の1種類で揃えると成立する役です。',
  han: "6",
  open_han: 5,
  menzen_only: '鳴き可',
  photo: "清一色.jpg"
)

Yaku.create!(
  name: '天和',
  reading: 'テンホー',
  description: '親が配牌であがっていると成立する役です。出現率は約0.002%',
  han: "役満",
  open_han: nil,
  menzen_only: '門前役',
  photo: nil
)

Yaku.create!(
  name: '地和',
  reading: 'チーホー',
  description: '鳴きのない1巡目に、子がツモであがると成立する役です。私は一度だけ上がったことがあります。出現率は約0.0003%',
  han: "役満",
  open_han: nil,
  menzen_only: '門前役',
  photo: "地和.jpg"
)

Yaku.create!(
  name: '人和',
  reading: 'レンホー',
  description: '鳴きのない1巡目で、自分のツモ番までに他家からあがると成立する役です。',
  han: "役満",
  open_han: nil,
  menzen_only: '門前役',
  photo: nil
)

Yaku.create!(
  name: '緑一色',
  reading: 'リューイーソー',
  description: '發と、索子の2・3・4・6・8（すべて使わなくてもよい）で揃えると成立する役です。出現率は約0.001%',
  han: "役満",
  open_han: nil,
  menzen_only: '鳴き可',
  photo: "緑一色.jpg"
)

Yaku.create!(
  name: '大三元',
  reading: 'ダイサンゲン',
  description: '白・發・中すべてを刻子や槓子で揃えると成立する役です。出現率は約0.04%',
  han: "役満",
  open_han: nil,
  menzen_only: '鳴き可',
  photo: "大三元.jpg"
)

Yaku.create!(
  name: '小四喜',
  reading: 'ショウスーシー',
  description: '東・南・西・北のいずれか1つを頭、他の3つを刻子や槓子で揃えると成立する役です。出現率は0.01%',
  han: "役満",
  open_han: nil,
  menzen_only: '鳴き可',
  photo: "小四喜和.jpg"
)

Yaku.create!(
  name: '字一色',
  reading: 'ツーイーソー',
  description: '字牌で揃えると成立する役です。出現率は約0.009%',
  han: "役満",
  open_han: nil,
  menzen_only: '鳴き可',
  photo: "字一色.jpg"
)

Yaku.create!(
  name: '国士無双',
  reading: 'コクシムソウ',
  description: '1・9・字牌の頭と、1・9・字牌を全種類揃えると成立する役です。出現率は0.04%',
  han: "役満",
  open_han: nil,
  menzen_only: '門前役',
  photo: "国士無双.jpg"
)

Yaku.create!(
  name: '九蓮宝燈',
  reading: 'チューレンポートウ',
  description: '萬子、筒子、索子の1種類で、1・9を3つ、2〜8を1つに加えた形で、1〜9のいずれか1つを加えた形で揃えると成立する役です。出現率は約0.0005%',
  han: "役満",
  open_han: nil,
  menzen_only: '門前役',
  photo: "チュー連.jpg"
)

Yaku.create!(
  name: '四暗刻',
  reading: 'スーアンコウ',
  description: '暗刻（手牌で同じ牌3つを揃えた面子）や暗槓の槓子（手牌で同じ牌4つを揃え積した面子）を4つ揃えると成立する役です。出現率は約0.05%',
  han: "役満",
  open_han: nil,
  menzen_only: '門前役',
  photo: "四暗刻.jpg"
)

Yaku.create!(
  name: '清老頭',
  reading: 'チンロウトウ',
  description: '1・9牌だけで揃えると成立する役です。出現率は約0.002%',
  han: "役満",
  open_han: nil,
  menzen_only: '鳴き可',
  photo: "チンロートウ.jpg"
)

Yaku.create!(
  name: '四槓子',
  reading: 'スーカンツ',
  description: '槓子（同じ牌4つを揃え積した面子）を4つ揃えると成立する役です。あがったら死ぬ。出現率は0.0002%',
  han: "役満",
  open_han: nil,
  menzen_only: '鳴き可',
  photo: "四槓子.jpg"
)

Yaku.create!(
  name: '四暗刻単騎',
  reading: 'スーアンコウタンキ',
  description: '暗刻（手牌で同じ牌3つを揃えた面子）や暗槓の槓子（手牌で同じ牌4つを揃え積した面子）を4つ揃えて、単騎待ちであがると成立する役です。',
  han: "役満",
  open_han: nil,
  menzen_only: '門前役',
  photo: "四暗刻単騎.jpg"
)

Yaku.create!(
  name: '大四喜',
  reading: 'ダイスーシー',
  description: '東・南・西・北を刻子（同じ牌3つで揃えた面子）や槓子（同じ牌4つを揃え積した面子）で揃えると成立する役です。出現率は約0.01%',
  han: "役満",
  open_han: nil,
  menzen_only: '鳴き可',
  photo: "daisushi.jpg"
)

Yaku.create!(
  name: '純正九蓮宝燈',
  reading: 'ジュンセイチューレンポートウ',
  description: '萬子、筒子、索子の1種類で、1・9を3つ、2〜8を1つずつ揃えると成立する役です。1〜9すべてが待ち牌です。あがったら死ぬ',
  han: "役満",
  open_han: nil,
  menzen_only: '門前役',
  photo: "純正中蓮.jpg"
)

Yaku.create!(
  name: '国士無双十三面待ち',
  reading: 'コクシムソウジュウサンメンマチ',
  description: '1・9・字牌を全種類1つずつ揃えると成立する役です。1・9・字牌の13種類すべてが待ち牌です。あがったら死ぬ',
  han: "役満",
  open_han: nil,
  menzen_only: '門前役',
  photo: "国士13面.jpg"
)
