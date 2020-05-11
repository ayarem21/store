Rails.application.routes.draw do
  root 'products#index'
  resources :products do
    collection do
     get :min_price
     get :max_price
   end
  end
end
