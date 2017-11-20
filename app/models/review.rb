class Review < ApplicationRecord
	belongs_to :hotel
	belongs_to :user


	validates :review_description, presence:true
	validates :review_description, length: { in: 1..500 }

end
