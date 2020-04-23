class CreateShoes < ActiveRecord::Migration[6.0]
  def change
    create_table :shoes do |t|
      t.string :style
      t.string :color
      t.integer :size

      t.timestamps
    end
  end
end
