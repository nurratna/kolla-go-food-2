require 'rails_helper'

describe Food do
	# it "is valid with a name and description" do
	# 	food = Food.new(
	# 		name: "Nasi Uduk",
	# 		description: "Betawi style steamed rice cooked in coconut milk.",
	# 		price: 10000.0
	# 	)
	# 	expect(food).to be_valid
	# end

	# it "is invalid without a name" do
	# 	food = Food.new(
	# 		name: nil,
	# 		description: "Betawi style steamed rice cooked in coconut milk.",
	# 		price: 10000.0
	# 	)
	# 	food.valid?	#valid atau tidak
	# 	expect(food.errors[:name]).to include("can't be blank")
	# end

	# it "is invalid without a description" do
	# 	food = Food.new(
	# 		name: "Nasi Uduk",
	# 		description: nil,
	# 		price: 10000.0
	# 	)
	# 	food.valid?
	# 	expect(food.errors[:description]).to include("can't be blank")
	# end

	# it "is invalid with a duplicate name" do
	# 	food1 = Food.create(
	# 		name: "Nasi Uduk",
	# 		description: "Betawi style steamed rice cooked in coconut milk.",
	# 		price: 10000.0
	# 	)

	# 	food2 = Food.new(
	# 		name: "Nasi Uduk",
	# 		description: "Betawi style steamed rice cooked in coconut milk.",
	# 		price: 10000.0
	# 	)
	# 	food2.valid?
	# 	expect(food2.errors[:name]).to include("has already been taken")
	# end

	# it "return a sorted array of result that match" do
	# 	food1 = Food.create(
	# 		name: "Nasi Uduk",
	# 		description: "Betawi style steamed rice cooked in coconut milk.",
	# 		price: 10000.0
	# 	)

	# 	food2 = Food.create(
	# 		name: "Kerak Telor",
	# 		description: "Betawi tradisional spicy omelette made from glutinous rice cooker with",
	# 		price: 8000.0
	# 	)

	# 	food3 = Food.create(
	# 		name: "Nasi Semur Jengkol",
	# 		description: "Based on dongfruit, this menu promises a and delicious taste",
	# 		price: 80000.0
	# 	)
	# 	expect(Food.by_letter("N")).to include(food3, food1)
	# 	# expect(Food.by_letter("N")).not_to include(food2)
	# end

	# describe "Filter name by letter" do
	# 	before :each do
	# 		@food1 = Food.create(
	# 			name: "Nasi Uduk",
	# 			description: "Betawi style steamed rice cooked in coconut milk.",
	# 			price: 10000.0
	# 		)

	# 		food2 = Food.create(
	# 			name: "Kerak Telor",
	# 			description: "Betawi tradisional spicy omelette made from glutinous rice cooker with",
	# 			price: 8000.0
	# 		)

	# 		food3 = Food.create(
	# 			name: "Nasi Semur Jengkol",
	# 			description: "Based on dongfruit, this menu promises a and delicious taste",
	# 			price: 80000.0
	# 		)

	# 		context "with matching letters" do
	# 			it "return a sorted array of result that match" do
	# 				expect(Food.by_letter("N")).to eq([@food3, @food1])
	# 			end
	# 		end

	# 		context "with non-matching letters" do
	# 			it "omits"
	# 			expect(Food.by_letter("N")).not_to include(@food2)
	# 		end
	# 	end
	# end

	# it "is valid if price with number" do
	# 	food = Food.new(
	# 		name: "Nasi Uduk",
	# 		description: "Betawi style steamed rice cooked in coconut milk.",
	# 		price: 10000.0
	# 	)
	# 	expect(food).to be_valid
	# end

	# it "is invalid if price without number" do
	# 	food = Food.new(
	# 		name: "Nasi Uduk",
	# 		description: "Betawi style steamed rice cooked in coconut milk.",
	# 		price: "sepuluh"
	# 	)
	# 	food.valid?
	# 	expect(food.errors[:price]).to include("is not a number")
	# end

	# it "is invalid if price less than 0.01" do
	# 	food = Food.new(
	# 		name: "Nasi Uduk",
	# 		description: "Betawi style steamed rice cooked in coconut milk.",
	# 		price: 0
	# 	)
	# 	food.valid?
	# 	expect(food.errors[:price]).to include("must be greater than or equal to 0.01")
	# end

	# it "is valid if image ends with anything other than '.gif', '.jpg', '.png'" do
	# 	food = Food.new(
	# 		name: "Nasi Uduk",
	# 		description: "Betawi style steamed rice cooked in coconut milk.",
	# 		price: 10000,
	# 		image_url: "image.gif"
	# 	)
	# 	expect(food).to be_valid
	# end

	# it "is invalid if image ends with anything other than '.gif', '.jpg', '.png'" do
	# 	food = Food.new(
	# 		name: "Nasi Uduk",
	# 		description: "Betawi style steamed rice cooked in coconut milk.",
	# 		price: 10000,
	# 		image_url: "image.psd"
	# 	)
	# 	food.valid?
	# 	expect(food.errors[:image_url]).to include("must be a URL for GIF, JPG or PNG image")
	# end

	# describe 'Check field validity' do
 #    before :each do
 #      @food = Food.new(
 #        name: 'Sate Ayam',
 #        description: 'Sate yang dibuat dari daging ayam',
 #        price: 30000.0
 #      )
 #    end

 #    context 'with valid name and description' do
 #      it 'is valid with a name and description' do
 #        expect(@food).to be_valid
 #      end
 #    end

 #    context 'without valid name' do
 #      it 'is invalid without a name' do
 #        @food.name = nil
 #        @food.valid?
 #        expect(@food.errors[:name]).to include("can't be blank")
 #      end
 #    end

 #    context 'without valid description' do
 #      it 'is invalid without a description' do
 #        @food.description = nil
 #        @food.valid?
 #        expect(@food.errors[:description]).to include("can't be blank")
 #      end
 #    end
	# end

	# USE FACTORY_GIRL

	it 'has a valid factory' do
		expect(build(:food)).to be_valid
	end

	it 'is valid with a name and description' do
		expect(build(:food)).to be_valid
	end

	it 'is invalid without a name' do 
		food = build(:food, name: nil)
		food.valid?
		expect(food.errors[:name]).to include("can't be blank")
	end

	it 'is invalid without a description' do
		food = build(:food, description: nil)
		food.valid?
		expect(food.errors[:description]).to include("can't be blank")
	end

	it 'is invalid with aa  duplicate name' do
		food1 = create(:food, name: 'Nasi Kuning')
		food2 = build(:food, name: 'Nasi Kuning')
		food2.valid?
		expect(food2.errors[:name]).to include('has already been taken')
	end

	it 'is invalid if price not numberic' do
		food = build(:food, price: 'sepuluh')
		food.valid?
		expect(food.errors[:price]).to include('is not a number')
	end

	it 'is invalid if price less than 0.01' do
		food = build(:food, price: 0)
		food.valid?
		expect(food.errors[:price]).to include("must be greater than or equal to 0.01")
	end

	it "is invalid if image ends with anything other than '.gif', '.jpg', '.png'" do
		food = build(:food, image_url: 'image.pdf')
		food.valid?
		expect(food.errors[:image_url]).to include("must be a URL for GIF, JPG or PNG image")
	end

	describe "filter name by letter" do
    before :each do
      @food1 = create(:food, name: 'Nasi Uduk')
			@food2 = create(:food, name: 'Kerak Telor')
			@food3 = create(:food, name: 'Nasi Kuning')
    end

    context "with matching letters" do
      it "returns a sorted array of results that match" do
        expect(Food.by_letter("N")).to eq([@food3, @food1])
      end
    end

    context "with non-matching letters" do
      it "omits results that do not match" do
        expect(Food.by_letter("N")).not_to include(@food2)
      end
    end

  end

end
