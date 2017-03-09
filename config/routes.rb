Rails.application.routes.draw do

  root 'blogs#index'

  resources :blogs do
    resources :articles do
      resources :comments
    end
  end

  get 'articles', to: 'articles#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
