Rails.application.routes.draw do
  root to: 'blogs#index'

  get 'offices/new'
  get 'offices/index'
  post 'offices/:id' => 'offices#index'
  post 'blogs/:id' => 'blogs#index'
  
  resources :blogs
  resources :offices

end
