class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.string :name
      t.integer :weight
      t.string :height
      t.string :energy_type
      t.string :vip_status
      t.integer :hit_points
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
