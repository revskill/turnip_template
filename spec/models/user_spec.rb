require 'spec_helper'

describe User do 
	describe "Activation Token" do 
		it "create activation code and set activated after signing up" do 
			u = User.create(email: 'h_dung@brycen.com.vn', password: '123456', password_confirmation: '123456')
			expect(u.activated).to be_false
			expect(u.activation_code).to eq('abcde')
		end
	end
	describe "Passwords" do 
		it "needs a password and confirmation to save" do 

		end
		it "needs password and confirmation to match" do 

		end
	end
	describe "Authentication" do 
		it "authenticates with a correct password" do 

		end

		it "does not authenticate with an incorrect password" do 

		end
	end
end