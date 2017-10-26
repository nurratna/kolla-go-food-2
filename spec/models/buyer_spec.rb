require 'rails_helper'

describe Buyer do 
	it 'has a valid factory' do 
		expect(build(:buyer)).to be_valid
	end

	it 'is valid with email, phone and address' do 
		expect(build(:food)).to be_valid
	end

	it 'is invalid without a email'
end