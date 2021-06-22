# frozen_string_literal: true

class Payment < ApplicationRecord
  NAMES = %w[無料 見放題 有料].freeze

  has_one :video_payment, dependent: :destroy
  has_one :video, through: :video_payment

  # name には「無料/見放題/有料」のいずれかが入っていることを確かめるバリデーションを追加
  validates :name, inclusion: { in: NAMES }
end
