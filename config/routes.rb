Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api, defaults: { format: 'json' } do
    namespace :v1 do
      get 'all/products', to: 'products#index'
      get 'destroy/product/:id', to: 'products#destroy'
      get 'product/show/:id', to: 'products#show'
      post 'products/search', to: 'products#search'
      post 'products/filter_category', to: 'products#filter_category'
      post 'products/filter_year', to: 'products#filter_year'
    end
  end
end
