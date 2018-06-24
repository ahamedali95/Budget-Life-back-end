Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users, only: [:index, :create]
      resources :bills, only: [:index, :create, :show, :destroy]
      resources :event_plannings, only: [:index, :create, :show, :update, :destroy]
      resources :categories, only: [:index, :create]
      resources :transactions, only: [:index, :create]
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
