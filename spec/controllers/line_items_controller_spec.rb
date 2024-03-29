require 'rails_helper'

describe LineItemsController do
	describe 'POST #create' do
		before :each do
			@food = create(:food)
		end

		it 'include currentCart' do
			# include module CurrentCard ( a.include(b) seolah si b inherit dari si a)
			expect(LineItemsController.ancestors.include? CurrentCart).to eq(true)
		end

		context 'with existing cart' do
			it 'does not create a new cart before saving a new line_item' do
				cart = create(:cart)
				session[:cart_id] = cart.id

				expect{
					post :create, params: { food_id: @food.id }
				}.not_to change(Cart, :count) 
			end
		end

		context 'without existing cart' do
			it 'creates a new cart before saving new line_item' do
				expect{
					post :create, params: { food_id: @food.id }
				}.to change(Cart, :count).by(1)
			end
		end

		it 'saves the new line_item in the database' do
			expect{
				post :create, params: { food_id: @food.id }
			}.to change(LineItem, :count).by(1)
		end

		it 'redirects to carts#show' do
			post :create, params: { food_id: @food.id }
			expect(response).to redirect_to(cart_path(assigns(:line_item).cart))
		end

		context 'with existing food' do
			it 'does not add a new line_item in the database' do
				cart = create(:cart)
				line_item = create(:line_item, food: @food, cart: @cart)

				expect{
					post :create, params: { food_id: @food.id }
				}.not_to change(LineItem, :count)
			end

			it 'increments the quantity of line_item with the same food' do
				cart = create(:cart)
				line_item = create(:line_item, food: @food.id, cart: cart)
				post :create, params: { food_id: @food.id }

				expect(line_item.quantity).to eq(2)
			end
		end

		context 'without existing food' do
			it 'saves the new line_item in the database' do
				expect{
					post :create, params: { food_id: @food_id }
				}.to change(LineItem, :count).by(1)
			end
		end
	end
end

