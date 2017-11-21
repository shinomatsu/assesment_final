class Hotel < ApplicationRecord
	has_many :reviews
	validates :address, presence: true

	geocoded_by :address
    after_validation :geocode

	


 scope :search_with_country, -> (country){ where("country like ?", "%#{country}%")}

end


