require 'rails_helper'

RSpec.describe Cart, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"

  it 'does not change the number of line_item if the same food is added' do
		cart = create(:cart)
		food = create(:food)
		line_item = create(:line_item, food: food, cart: cart)
		
		expect{ cart.add_food(food) }.not_to change(LineItem, :count)
	end

	it 'increments the quantity of line_item if the same food is added' do
		cart = create(:cart)
		food = create(:food)
		line_item = create(:line_item, food: food, cart: cart)

		expect(cart.add_food(food).quantity).to eq(2)	
	end
end
