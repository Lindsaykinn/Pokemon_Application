class Character < ActiveRecord::Base
  belongs_to :user

  validates_presence_of :name, :weight, :height, :energy_type, :vip_status, :hit_points

  #scope method
  def self.search(query)
    where("name LIKE ?", "%#{query}%")
  end

  def self.alphabetize 
    order(name: :asc)
  end

end


