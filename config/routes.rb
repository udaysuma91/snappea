Rails.application.routes.draw do
  namespace :api, defaults: {format: 'json'} do
    namespace :v1 do
      resources :restaurants do
        member do
          get :items
        end
        collection do
        end
      end
    end
  end
end
