Rails.application.routes.draw do
  get 'contact/new'
  root 'static_pages#landing'
  get 'static_pages/home'
  get 'static_pages/faq'
  get 'static_pages/healing'
  
  resources :portfolios do
    resources :flashs
  end

  resources :contacts, only: [:new, :create]

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
