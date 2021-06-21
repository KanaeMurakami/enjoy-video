# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Video.destroy_all

[
  {
    title: '名探偵コナン',
    genre1: 'アニメ',
    genre2: 'キッズ',
    payment: '見放題'
  },
  {
    title: 'ハリーポッターと賢者の石',
    genre1: 'アニメ',
    genre2: '映画',
    payment: '無料'
  },
  {
    title: 'トリック1',
    genre1: 'ミステリー',
    genre2: 'ドラマ',
    payment: '有料'
  },
  {
    title: 'ヱヴァンゲリヲン新劇場版：Ｑ',
    genre1: '映画',
    genre2: 'アニメ',
    payment: '有料'
  },
  {
    title: 'いろはに千鳥',
    genre1: nil,
    genre2: 'バラエティ',
    payment: '見放題'
  },
  {
    title: 'オッドタクシー',
    genre1: 'アニメ',
    genre2: nil,
    payment: '見放題'
  }
].each do |e|
  Video.create!(e)
end