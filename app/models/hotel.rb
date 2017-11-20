class Hotel < ApplicationRecord
	has_many :reviews


scope :search_with_country, -> (country){ where("country like ?", "%#{country}%")}

# def self.search(country)  
#     if search
#       Project.where(['country LIKE ?', "%#{country}%"])
#     else
#       Project.all 
#     end
# end

end
