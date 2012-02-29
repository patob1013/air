class User < ActiveRecord::Base
  
  has_secure_password
  
  validates :email, presence: true
  validates :first, presence: true
  validates :last,  presence: true
  
end
