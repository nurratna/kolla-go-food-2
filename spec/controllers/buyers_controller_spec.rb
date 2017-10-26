require 'rails_helper'

describe BuyersController do 
	describe 'GET #index' do
		context 'with params[:letter]' do
			it 'populates an array of buyer starting with the letter' do
				buyer1 = create(:buyer, email: 'nur@gmail.com')
				buyer2 = create(:buyer, email: 'ratna@gmail.com')
				get :index, params: { letter: 'n' }
				expect(assigns(:buyers)).to match_array([buyer1])
			end

			it 'renders the :index template' do
				get :index, params: { letter: 'n' }
				expect(response).to render_template :index
			end
		end

		context 'without params[:letter]' do
			it 'populates an array of all buyer' do 
				buyer1 = create(:buyer, email: 'nur@gmail.com')
				buyer2 = create(:buyer, email: 'ratna@gmail.com')
				get :index
				expect(assigns(:buyers)).to match_array([buyer1, buyer2])
			end

			it 'renders the :index template' do
				get :index
				expect(response).to render_template :index
			end
		end
	end

	describe 'GET #show' do
		it 'assign the requested Buyer to @buyer' do
			buyer = create(:buyer)
			get :show, params: { id: buyer }
			expect(assigns(:buyer)).to eq buyer
		end

		it 'renders the :show template' do
			buyer = create(:buyer)
			get :show, params: { id: buyer }
			expect(response).to render_template :show
		end
	end

	describe 'GET #new' do
		it 'assign the new Buyer to @buyer' do 
			get :new
			expect(assigns(:buyer)).to be_a_new(Buyer)
		end

		it 'renders the :new template' do
			get :new
			expect(response).to render_template :new
		end
	end

	describe 'GET #edit' do
		it 'assign the requested food to @food' do
			buyer = create(:buyer)
			get :edit, params: { id: buyer }
			expect(assigns(:buyer)).to eq buyer
		end
		it 'renders the :edit template' do
			buyer = create(:buyer)
			get :edit, params: { id: buyer }
			expect(response).to render_template :edit
		end
	end

	describe 'POST #create' do
		context 'with valid attributes' do
			it 'saves the new buyer in the database' do
				expect{
					post :create, params: { buyer: attributes_for(:buyer) }
				}.to change(Buyer, :count).by(1)
			end

			it 'redirects to buyer#show' do 
				post :create, params: { buyer: attributes_for(:buyer) }
				expect(response).to redirect_to(buyer_path(assigns(:buyer)))
			end
		end

		context 'with invalid attributes' do
			it 'does not save the new buyer in the database' do
				expect{
					post :create, params: { buyer: attributes_for(:invalid_buyer) }
				}.not_to change(Buyer, :count)
			end

			it 're-renders the :new template' do 
				post :create, params: { buyer: attributes_for(:invalid_buyer) }
				expect(response).to render_template :new
			end 
		end
	end

	describe 'PATCH #update' do
		before :each do
			@buyer = create(:buyer)
		end

		context 'with valid attributes' do
			it 'locates the requested @buyer' do
				patch :update, params: {id:@buyer, buyer: attributes_for(:buyer) }
				expect(assigns(:buyer)).to eq @buyer
			end

			it "changes @buyers attributes" do
				patch :update, params: { id: @buyer, buyer: attributes_for(:buyer, email: 'nur@gmail.com') }
				@buyer.reload
				expect(@buyer.email).to eq('nur@gmail.com')
			end

			it 'redirect to the buyer' do 
				patch :update, params: { id: @buyer, buyer: attributes_for(:buyer) }
				expect(response).to redirect_to @buyer
			end
		end

		context 'with invalid' do
			it "does not update the buyer in the database" do
        patch :update, params: { id: @buyer, buyer: attributes_for(:buyer, email: 'nur@gmail.com', phone: nil) }
        @buyer.reload
        expect(@buyer.email).not_to eq('nur@gmail.com')
      end

			it 're-renders the :edit template' do
				patch :update, params: { id: @buyer, buyer: attributes_for(:invalid_buyer) }
				expect(response).to render_template :edit
			end
		end
	end

	describe 'DELETE #destroy' do
		before :each do
      @buyer = create(:buyer)
    end
    
		it "deletes the buyer from the database" do
      expect{
        delete :destroy, params: { id: @buyer }
      }.to change(Buyer, :count).by(-1)
    end

		it 'redirects to food#show' do
			delete :destroy, params: { id: @buyer }
			expect(response).to redirect_to buyers_path
		end
	end
end