class AddSludToPins < ActiveRecord::Migration[5.0]
  def change
    add_column :pins, :slug, :string
  end
end
