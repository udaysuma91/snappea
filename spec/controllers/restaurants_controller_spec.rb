require 'rails_helper'

RSpec.describe Api::V1::RestaurantsController, type: :controller do
  let(:restaurant) {FactoryGirl.create(:restaurant)}
  let(:category) {Category.create(name: 'Side')}
	let(:menu) { Menu.create(:name => 'item 4', :category_id => category.id,:restaurant_id => restaurant.id,:description =>"test item4") }
  
  ######### get list of restaurants ################
  describe 'GET /api/v1/restaurants' do
	 let(:params) { {api: '49d0b9e8-d9b1-46d6-b784-cd0258ffdc5c'} }	
	it 'check api key' do
      get :index, format: :json
      if restaurant.present? && params[:api].present?
      	p restaurant			
      else
      	p "Restaurants not found"
      end
    end    
  end

describe 'GET /api/v1/restaurants' do
	 let(:params) { {api: ''} }	
	it 'check valid api key' do
      get :index, format: :json
      if params[:api].blank?
      	p "please provide api key"			
      end
    end    
  end

####### for geting list of restaurant menus ###########
describe 'GET /api/v1/restaurants/1/menus' do
	 let(:params) { {api: '49d0b9e8-d9b1-46d6-b784-cd0258ffdc5c'} }	
	it 'check api key' do
      get :index, format: :json
      if menu.present? && params[:api].present?
      	p menu			
      else
      	p "restaurant menu items not found"
      end
    end    
  end
 
describe 'GET /api/v1/restaurants/1/menus' do
	 let(:params) { {api: ''} }	
	it 'check valid api key' do
      get :index, format: :json
      if params[:api].blank?
      	p "please provide api key"			
      end
    end    
  end

end
