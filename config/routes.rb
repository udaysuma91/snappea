Rails.application.routes.draw do
  
  namespace :api, defaults: {format: 'json'} do
    namespace :v1 do
      resources :restaurants do
        member do
          get :items
        end
      end
    end
  end

end
