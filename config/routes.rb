Rails.application.routes.draw do
  root to: 'blogs#index'

  get 'offices/new'
  resources :blogs
  resources :offices

end
