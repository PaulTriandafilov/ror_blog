Rails.application.routes.draw do

  root 'blogs#index'

  resources :blogs, shallow: true do
    resources :articles
  end

  resources :articles, shallow: true do
    resources :comments
  end

  get 'articles', to: 'articles#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
