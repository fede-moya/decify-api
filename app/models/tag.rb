class Tag < ApplicationRecord
  has_many :decision_tags
  has_many :decisions, through: :decision_tags
end
