require 'rails_helper'

RSpec.describe Review, type: :model do
  

	describe 'validations' do
		 it { is_expected.to validate_presence_of(:review_description) }
         it { is_expected.to validate_length_of(:review_description).is_at_least(1).is_at_most(500)}
	end

	describe 'associations' do

		    it { is_expected.to belong_to(:user) }
			it { is_expected.to belong_to(:hotel) }

	end


end
