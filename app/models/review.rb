class Review < ApplicationRecord
	belongs_to :hotels
	belongs_to :users


	validates :review_description, presence:true
	validates :review_description, length: { in: 1..500 }

end
