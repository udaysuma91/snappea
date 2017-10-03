class Api::V1::RestaurantsController < ApiController
  include ActionController::HttpAuthentication::Token::ControllerMethods
  before_action :authenticate
  before_action :set_restaurant, only: [:items]
  PER_PAGE = 10
	
	def index
		@restaurants = Restaurant.all
		if @restaurants.present?
			render json: {status: true, restaurants:@restaurants}, status: 200
		else
			render json: {status: false, message: "Restaurants Not Found"}, status: 422 and return
		end
	end

	def items
		if @restaurant.present?
			items = @restaurant.menus.paginate(:page => params[:page], :per_page => PER_PAGE)
			if items.present?
				items_json = Array.new
				items.each do |item|
					items_data = {}
					items_data["tags"] = Array.new
					items_data[:id] =  item.id
					items_data[:name] =  item.name
					items_data[:category] = item.category.name
					items_data[:description] = item.description
					items_json << items_data
					item.menu_tags.each do |tag|
						items_data["tags"] << {name: tag.name}
					end
				end
				render json: {status: true, menu_items: items_json}, status: 200
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
