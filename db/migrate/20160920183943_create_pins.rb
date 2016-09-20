class CreatePins < ActiveRecord::Migration[5.0]
  def change
    create_table :pins do |t|
      t.string :name
      t.string :image
      t.references :board, foreign_key: true

      t.timestamps
    end
  end
end
