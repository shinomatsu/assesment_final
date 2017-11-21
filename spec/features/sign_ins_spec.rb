require 'rails_helper'

RSpec.feature "SignIns", type: :feature do

		  describe 'sign in' do

			  	before(:each) do
			  		User.create(email: 'a@a.com', password:'123456')
			  	end

			  	it 'signs me in and show hotel page' do
			  		visit '/sign_in'
				  		within('form[action="/session"]') do
				  			find('#session_email').set('a@a.com')
								find('#session_password').set('123456')
				  		                                  end
			  		click_button 'sign in'
			  		expect(page).to have_content "All hotel"
			  	end
		  end
		  
end

