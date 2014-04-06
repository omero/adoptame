Adoptame::Application.routes.draw do
  devise_for :admins
  resources :users
  resources :companies
  get "pages/home"
  root 'pages#home'
end
