class User < ApplicationRecord
 include BCrypt
  
  has_secure_password
  validates :email, presence: true
  has_many :authentications

 #Declare an enum attribute where the values map to integers in the database
 enum role: [:superadmin, :only_user]


 def self.create_with_auth_and_hash(authentication, auth_hash)
	      user = self.create!(
	        first_name: auth_hash["info"]["nickname"],
	        email: auth_hash["extra"]["raw_info"]["email"],
	        password: SecureRandom.hex(3)

	      )
	      user.authentications << authentication
	      return user
	    end

	    # grab fb_token to access Facebook for user data
	    def tw_token
	      x = self.authentications.find_by(provider: 'twitter')
	      return x.token unless x.nil?
	    end


end
