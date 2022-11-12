Rails.application.routes.draw do
  get 'users/show'
  get 'users/edit'
  resources :books
  root to: "homes#top"
  get "/homes/about" => "homes#about", as: "about"
  devise_for :users
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
