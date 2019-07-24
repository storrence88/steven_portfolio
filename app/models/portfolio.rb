# frozen_string_literal: true

class Portfolio < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged
end
