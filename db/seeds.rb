# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Video.destroy_all
Payment.destroy_all
Genre.destroy_all

%w[アニメ キッズ 映画 ミステリー ドラマ バラエティ].each do |name|
  Genre.create!(name: name)
end

anime = Genre.find_by(name: 'アニメ')
kids = Genre.find_by(name: 'キッズ')
movie = Genre.find_by(name: '映画')
mystery = Genre.find_by(name: 'ミステリー')
drama = Genre.find_by(name: 'ドラマ')
entertainment = Genre.find_by(name: 'バラエティ')

%w[無料 見放題 有料].each do |name|
  Payment.create!(name: name)
end

free = Payment.find_by(name: '無料')
unlimited = Payment.find_by(name: '見放題')
paid = Payment.find_by(name: '有料')

[
  {
    title: '名探偵コナン',
    genres: [anime, kids],
    payment: unlimited
  },
  {
    title: 'ハリーポッターと賢者の石',
    genres: [anime, movie],
    payment: free
  },
  {
    title: 'トリック1',
    genres: [mystery, drama],
    payment: paid
  },
  {
    title: 'ヱヴァンゲリヲン新劇場版：Ｑ',
    genres: [movie, anime],
    payment: paid
  },
  {
    title: 'いろはに千鳥',
    genres: [entertainment],
    payment: unlimited
  },
  {
    title: 'オッドタクシー',
    genres: [anime],
    payment: unlimited
  }
].each do |e|
  Video.create!(e)
end