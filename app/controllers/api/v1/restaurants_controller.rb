class Api::V1::RestaurantsController < ApiController
  include ActionController::HttpAuthentication::Token::ControllerMethods
  before_action :authenticate
  before_action :set_restaurant, only: [:items]
  PER_PAGE = 10
	
	def index
		@restaurants = Restaurant.all
		if @restaurants.present?
			render json: {restaurants:@restaurants}, status: 200
		else
			render json: {status: false, message: "Restaurants Not Found"}, status: 422 and return
		end
	end

	def items
		if @restaurant.present?
			items = @restaurant.menus.paginate(:page => params[:page], :per_page => PER_PAGE)
			if items.present?
				render json: @restaurant, include:  ['menus','menu_tags'], status: 200 
			else
				render json: {status: false, message: "Items Not Found"}, status: 422 and return
			end
		else
			render json: {status: false, message: "Restaurant Not Found"}, status: 422 and return
		end
	end

	private
		def set_restaurant
			@restaurant = Restaurant.find_by_id(params[:id])
		end
	
	protected
    def authenticate
      authenticate_token || render_unauthorized
    end

    def authenticate_token
    	if params[:api].present?
      	@current_app_client = User.find_by(guid: params[:api])
      	return true if @current_app_client.present?
    	else
    		render json: {status: false, message: 'Please Provie Api Key'}, status: 400
    	end
    end

    def render_unauthorized
      render json: {status: false, message: 'Invalid Authentication'}, status: 401
    end
end
