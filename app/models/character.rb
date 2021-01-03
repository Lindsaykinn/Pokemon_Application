class Character < ActiveRecord::Base
  belongs_to :user

  validates_presence_of :name, :weight, :height, :energy_type, :vip_status, :hit_points
end


t.string :name
      t.integer :weight
      t.string :height
      t.string :energy_type
      t.string :vip_status
      t.integer :hit_points
      t.integer :user_id