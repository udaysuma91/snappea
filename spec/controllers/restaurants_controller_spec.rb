require 'rails_helper'

RSpec.describe Api::V1::RestaurantsController, type: :controller do
  before(:each) do
    @user = FactoryGirl.create(:user)
    @restaurants = FactoryGirl.create(:restaurant)
  end
  let(:category) {Category.create(name: 'Side')}
	let(:menu) { Menu.create(:name => 'item 4', :category_id => category.id,:restaurant_id => @restaurants.id,:description =>"test item4") }
  
  ######### get list of restaurants ################

  describe 'GET /api/v1/restaurants' do
  	 it 'check api key present' do
        get :index, format: :json
        expect(response.status).to eq 400
      end    
  end
  describe 'GET /api/v1/restaurants.json?api=49d0b9e8-d9b1-46d6-b784-cd0258ffdc5c' do
     let(:params) { { disabled: 'false' } }
     it 'list of restaurants' do
        get :index, format: :json, :params => {api: '49d0b9e8-d9b1-46d6-b784-cd0258ffdc5c'}
        expect(response.status).to eq 200
      end    
  end
  ####### for geting list of restaurant menus ###########
  describe 'GET /api/v1/restaurants/1/menus' do
       it 'check api key present' do
          get :index, format: :json
          expect(response.status).to eq 400
        end    
  end

  describe 'GET /api/v1/restaurants/1/menus.json?api=49d0b9e8-d9b1-46d6-b784-cd0258ffdc5c' do
  	let(:params) { { disabled: 'false' } }
    it 'list of restaurant menu items' do
      get :index, format: :json, :params => {api: '49d0b9e8-d9b1-46d6-b784-cd0258ffdc5c'}
      expect(response.status).to eq 200
    end    
  end
end
