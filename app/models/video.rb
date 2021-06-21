# frozen_string_literal: true

class Video < ApplicationRecord
  validates :title, presence: true
end
