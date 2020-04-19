Rails.application.routes.draw do
  resources :job_posts
  root 'blog#index'

  resources :employers
  resources :candidates
  devise_for :users, :controllers => { registrations: "registrations" }
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
