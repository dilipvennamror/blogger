Rails.application.routes.draw do
  devise_for :users
  resources :posts do
    resources :likes
    resources :comments
  end

  resources :comments do
    resources :comments
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'posts#index'
end
