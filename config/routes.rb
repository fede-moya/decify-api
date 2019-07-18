# frozen_string_literal: true

Rails.application.routes.draw do
  namespace :rest do
    namespace :v1 do
      # SUPER TEMPORAL CUSTOM ENDPOINT
      get 'users/:id/decisions', to: 'decisions#user_decisions'

      jsonapi_resources :alternatives
      jsonapi_resources :decisions
      jsonapi_resources :votes
      jsonapi_resources :messages
      jsonapi_resources :tags
      jsonapi_resources :users
      jsonapi_resources :organizations

      resources :users, ony: [] do
        post :upload_avatar, on: :member
        get :avatar, on: :member
      end

      resources :organizations, only: [] do
        post :upload_logo, on: :member
        get :logo, on: :member
      end

      # Like messages
      post 'messages/:id/like', to: 'messages#like'
      post 'messages/:id/dislike', to: 'messages#dislike'

      # Invitations
      post 'invitations', to: 'invitations#create'

      # Dashboard
      get 'dashboard/overview', to: 'dashboards#overview'
      get 'dashboard/pending_decisions', to: 'dashboards#pending_decisions'

      # Graphs
      get 'graphs/decisions_vs_time', to: 'graphs#decisions_vs_time'
      get 'graphs/messages_vs_time', to: 'graphs#messages_vs_time'
      get 'graphs/votes_vs_time', to: 'graphs#votes_vs_time'

      # Authorization
      post 'sessions', to: 'sessions#create'
      delete 'sessions', to: 'sessions#destroy'
      get 'sessions/mobile', to: 'sessions#deep_link_mail'
      post 'passwords', to: 'passwords#create'
    end
  end
end
