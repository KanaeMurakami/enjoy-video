# frozen_string_literal: true

class Video < ApplicationRecord
  has_one :video_payment, dependent: :destroy
  has_one :payment, through: :video_payment
  has_many :video_genres, dependent: :destroy
  has_many :genres, through: :video_genres

  validates :title, presence: true

  # genre の name: "映画" のビデオを絞り込むスコープを追加
  scope :movies, lambda {
    joins(:genres).where(genres: { name: '映画' })
  }
end
