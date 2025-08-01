require 'rails_helper'

RSpec.describe ProductsController, type: :controller do
  let(:category) { Category.create!(name: 'test') }
  let(:valid_attributes) { { name: 'Test Product', price: 10.99, category_id: category.id } }
  let(:invalid_attributes) { { name: nil, price: 10.99, category_id: category.id } }

  describe 'GET #index' do
    it 'returns a success response' do
      Product.create! valid_attributes
      get :index
      expect(response).to be_successful
    end
  end

  describe 'GET #show' do
    it 'returns a success response' do
      product = Product.create! valid_attributes
      get :show, params: { id: product.to_param }
      expect(response).to be_successful
    end
  end

  describe 'GET #new' do
    it 'returns a success response' do
      get :new
      expect(response).to be_successful
    end
  end

  describe 'POST #create' do
    context 'with valid params' do
      it 'creates a new Product' do
        expect {
          post :create, params: { product: valid_attributes }
        }.to change(Product, :count).by(1)
      end

      it 'redirects to the created product' do
        post :create, params: { product: valid_attributes }
        expect(response).to redirect_to(Product.last)
      end
    end

    context 'with invalid params' do
      it "returns a success response (i.e. to display the 'new' template)" do
        post :create, params: { product: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end
end
