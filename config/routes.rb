Rails.application.routes.draw do  
  scope module: 'api/v1' do
    resources :main, only: [:index]
    resources :categories, only: [:show, :create]
    resources :courses, only: [:show, :create, :update]
    
    scope module: 'users' do
      post 'sign_in', to: 'sessions#create'
      post 'sign_up', to: 'registration#create'
      get 'profile', to: 'profile#show'
    end
  end
end
