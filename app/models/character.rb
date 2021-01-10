class Character < ActiveRecord::Base
  belongs_to :user

  validates_presence_of :name, :weight, :height, :energy_type, :vip_status, :hit_points

end


