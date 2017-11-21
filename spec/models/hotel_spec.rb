require 'rails_helper'

RSpec.describe Hotel, type: :model do

	before(:each) do
		@user = User.create!(email: 'a@a.com', password: '123456')
	end

  	describe 'validations' do
		 it { is_expected.to validate_presence_of(:address) }
		 it { is_expected.to validate_presence_of(:country) }
         
	end

	describe 'associations' do

			it { is_expected.to have_many(:reviews) }

	end



	describe '#search_with_country' do

		before(:each) do
			Hotel.create!(name: 'abc hotel', country: 'UK', address: 'asdf')
			Hotel.create!(name: 'efg hotel', country: 'Japan', address: 'sdfs')
			Hotel.create!(name: 'hij hotel', country: 'US', address: 'sdfsg')
		end

	    it 'gives the hotel that contains the country' do
			expect(Hotel.search_with_country('UK').count).to eq 1
		end

		it 'gives all the hotel instead if the country is not found' do
			expect(Hotel.search_with_country('Korea').count).to eq 0
		end




	end


end
