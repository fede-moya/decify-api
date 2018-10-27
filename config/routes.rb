Rails.application.routes.draw do

  namespace :rest do
     namespace :v1 do
     		jsonapi_resources :decisions
      	jsonapi_resources :users
  	end
	end
	
end
