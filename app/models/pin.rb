class Pin < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: :slugged

  belongs_to :board

  paginates_per 10
end
