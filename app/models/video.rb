# frozen_string_literal: true

class Video < ApplicationRecord
  PAYMENT = %w[無料 見放題 有料].freeze

  validates :title, presence: true
  validate :validation_payment

  # genre: "映画" のビデオを絞り込むスコープを追加
  scope :movies, lambda {
  }

  private

  # payment には「無料/見放題/有料」のいずれかが入っていることを確かめるバリデーションを追加
  def validation_payment
    # errors.add(:property, :inclusion)
  end
end
