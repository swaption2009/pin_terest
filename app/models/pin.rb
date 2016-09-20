class Pin < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: :slugged

  belongs_to :board

  paginates_per 10

  searchable do
    text :name, :image
    integer :board_id
  end

  def self.search_pin(search_key)
    @search = self.search do
      fulltext "#{search_key}"
    end
    @search.results
  end


end
