Yaku.create!(
  name: '立直',
  description: '門前で聴牌した時に宣言できる役。立直宣言時は捨て牌を横向きに曲げる。',
  han: 1,
  open_han: nil,
  menzen_only: '面前のみ',
  photo: '立直画像.png'
)

Yaku.create!(
  name: '断么九',
  description: '１、９、字牌を一切使わない手。',
  han: 1,
  open_han: nil,
  menzen_only: nil
)

Yaku.create!(
  name: '混一色',
  description: '字牌と1種類の数牌（萬子、筒子、索子）で手牌を揃えた場合に成立する3翻役。鳴くと2翻になる。',
  han: 3,
  open_han: 2,
  menzen_only: nil
)

Yaku.create!(
  name: '平和',
  description: '全てが順子 (3枚の連続した同じ数字の牌) で構成され、雀頭 (2枚の同じ牌) が役牌 (東, 南, 西, 北, 白, 符) 以外で、門前 (ポンやチーをせずに自分のツモだけでアガる) で成立する役',
  han: 1,
  open_han: nil,
  menzen_only: '面前のみ'
)