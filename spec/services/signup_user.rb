require 'spec_helper'

describe SignupUser do 
	it "error when no email" do 
		u = User.new
		expect(u.save!).to_not be_valid
	end
	it "error when password less than 6 characters" do 
		u = User.new(email: 'dung', password: '12345')
		expect(u.save!).to_not be_valid
	end
	it "error when password is null" do 
		u = User.new(email: 'dung')
		expect(u.save!).to_not be_valid
	end
	it "error when password and password_confirmation is not equal" do 
		u = User.new(email:'dung', password: '1234567', password: '12345678')
		expect(u.save!).to_not be_valid
	end
	it "ok when email is present and password and password_confirmation is equal and more than 6 characters" do 
		
	end
end