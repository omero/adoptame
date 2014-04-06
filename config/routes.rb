Adoptame::Application.routes.draw do
  devise_for :users
  devise_for :admins
  resources :users
  resources :companies
  get "/dashboard", to: "pages#dashboard", as: :dashboard
  root 'pages#home'
end
