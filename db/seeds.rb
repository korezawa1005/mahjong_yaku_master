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
  description: '１、９、字牌を一切使わない手。',
  han: 3,
  open_han: 2,
  menzen_only: nil
)
