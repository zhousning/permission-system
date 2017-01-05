Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "users/registrations", confirmations: "users/confirmations", sessions: "users/sessions" }

  resources :services, :only => [:index, :show]

  resources :institutions, :only => [:index, :show]

  resources :users do
    get :control, :on => :collection
  end

  resources :products
  
  resources :roles

  resources :shops do
    resources :products
  end

  root 'home#index'
end
