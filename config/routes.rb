Rails.application.routes.draw do

  namespace :rest do
     namespace :v1 do
     		jsonapi_resources :alternatives
     		jsonapi_resources :decisions
      	jsonapi_resources :users
        
        post 'sessions', to: 'sessions#create'
        delete 'sessions', to: 'sessions#destroy'
  	end
	end
	
end
