class User < ActiveRecord::Base
  has_many :characters
  #macro provided by bcrypt gem. encrypts the password and stores the password as password_digest:
  has_secure_password

  validates :username, presence: true, uniqueness: true

  # def search_characters(query)
  #   self.characters.where("name LIKE ?", "%#{query}%")
  # end
end
