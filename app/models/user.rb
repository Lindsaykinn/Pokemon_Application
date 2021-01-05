class User < ActiveRecord::Base
  has_many :characters
  #macro provided by bcrypt gem. encrypts the password and stores the password as password_digest:
  has_secure_password

  validates :username, presence: true, uniqueness: true
end
