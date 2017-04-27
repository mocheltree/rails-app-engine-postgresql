Rails.application.routes.draw do
  root "visitors#index"
  resources :visitors
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
