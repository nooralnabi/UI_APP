Rails.application.routes.draw do
  resources :profiles
  resources :addresses
  resources :people
  root "people#index"
  devise_for :users, controllers: { omniauth_callbacks: "users/omniauth_callbacks", sessions: 'users/sessions'}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
