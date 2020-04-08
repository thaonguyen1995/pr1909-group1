Rails.application.routes.draw do
  root 'blog#index'
  devise_for :users
  get "candidate/:id" to: "candidate#show"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
