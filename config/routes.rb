Rails.application.routes.draw do
  get 'users/new'

  resources :restaurants

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
