Rails.application.routes.draw do
  root 'static_pages#landing'
  get 'static_pages/home'
  
  resources :portfolios do
    resources :flashs
  end

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
