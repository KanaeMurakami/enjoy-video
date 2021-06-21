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
    property: {
      genre: 'アニメ,キッズ',
      payment: '見放題'
    }
  },
  {
    title: 'ハリーポッターと賢者の石',
    property: {
      genre: 'アニメ,映画',
      payment: '無料'
    }
  },
  {
    title: 'トリック1',
    property: {
      genre: 'ミステリー,ドラマ',
      payment: '有料'
    }
  },
  {
    title: 'ヱヴァンゲリヲン新劇場版：Ｑ',
    property: {
      genre: '映画,アニメ',
      payment: '有料'
    }
  },
  {
    title: 'いろはに千鳥',
    property: {
      genre: 'バラエティ',
      payment: '見放題'
    }
  },
  {
    title: 'オッドタクシー',
    property: {
      genre: 'アニメ',
      payment: '見放題'
    }
  }
].each do |e|
  Video.create!(
    title: e[:title],
    property: e[:property].to_json
  )
end