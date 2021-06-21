# frozen_string_literal: true

class Video < ApplicationRecord
  has_one :video_payment, dependent: :destroy
  has_one :payment, through: :video_payment
  has_many :video_genres, dependent: :destroy
  has_many :genres, through: :video_genres

  validates :title, presence: true
  # payment には「無料/見放題/有料」のいずれかが入っていることを確かめるバリデーションを追加
  # validates :payment, ...

  validate :validation_genre_uniqueness

  # genre: "映画" のビデオを絞り込むスコープを追加
  scope :movies, lambda {
  }

  private

  # genre1 と genre2 に同じ名称が入らないようにバリデーションを実装したい
  def validation_genre_uniqueness
    # errors.add(:genre1, :taken) or errors.add(:genre2, :taken)
  end
end
