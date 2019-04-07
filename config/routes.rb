# frozen_string_literal: true

Rails.application.routes.draw do
  namespace :rest do
    namespace :v1 do
      jsonapi_resources :alternatives
      jsonapi_resources :decisions
      jsonapi_resources :users
      jsonapi_resources :organizations
      jsonapi_resources :votes
      jsonapi_resources :messages
      jsonapi_resources :tags

      # Dashboard
      get 'dashboard/overview', to: 'dashboards#overview'
      get 'dashboard/pending_decisions', to: 'dashboards#pending_decisions'

      # Authorization
      post 'sessions', to: 'sessions#create'
      delete 'sessions', to: 'sessions#destroy'
      get 'sessions/mobile', to: 'sessions#deep_link_mail'
      post 'passwords', to: 'passwords#create'
    end
  end
end
