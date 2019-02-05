Rails.application.routes.draw do

  namespace :rest do
     namespace :v1 do
     		jsonapi_resources :alternatives
     		jsonapi_resources :decisions
      	jsonapi_resources :users
        
        post 'sessions', to: 'sessions#create'
        delete 'sessions', to: 'sessions#destroy'
        resources 'sessions'do
          collection do
            match '', via: :options, action: 'options'
          end
        end
  	end
	end
	
end
