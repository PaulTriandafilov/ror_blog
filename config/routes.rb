Rails.application.routes.draw do

  root 'blogs#index'

  resources :blogs, shallow: true do
    resources :articles
  end

  resources :articles, only: [:index, :edit, :update], shallow: true do
    resources :comments, only: [:create, :destroy]
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
