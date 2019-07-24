# frozen_string_literal: true

class Skill < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged
end
