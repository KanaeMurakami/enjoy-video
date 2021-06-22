# frozen_string_literal: true

class Video < ApplicationRecord
  PAYMENT = %w[無料 見放題 有料].freeze

  validates :title, presence: true
  # payment には「無料/見放題/有料」のいずれかが入っていることを確かめるバリデーションを追加
  validates :payment, inclusion: { in: PAYMENT }

  validate :validation_genre_uniqueness

  # genre: "映画" のビデオを絞り込むスコープを追加
  scope :movies, lambda {
    where(genre1: '映画').or(where(genre2: '映画'))
  }

  private

  # genre1 と genre2 に同じ名称が入らないようにバリデーションを実装したい
  def validation_genre_uniqueness
    return if genre1 != genre2

    errors.add(:genre2, :taken)
  end
end
