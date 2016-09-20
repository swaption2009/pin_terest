class AddSludToBoards < ActiveRecord::Migration[5.0]
  def change
    add_column :boards, :slug, :string
  end
end
