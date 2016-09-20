class RecreateOldThumbnails < ActiveRecord::Migration[5.0]
  def change
    Pin.all.each { |p| p.image.recreate_versions! if p.image }
  end
end
