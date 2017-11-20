class User < ApplicationRecord
 include BCrypt
  
  has_secure_password
  validates :email, presence: true

 #Declare an enum attribute where the values map to integers in the database
 enum role: [:superadmin, :only_user]

end
