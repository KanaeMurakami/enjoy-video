# frozen_string_literal: true

class Payment < ApplicationRecord
  NAMES = %w[無料 見放題 有料].freeze

  has_one :video_payment, dependent: :destroy
  has_one :video, through: :video_payment
end
