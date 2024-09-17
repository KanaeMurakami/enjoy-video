# frozen_string_literal: true

class VideoPayment < ApplicationRecord
  belongs_to :video
  belongs_to :payment
end
