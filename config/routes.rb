Rails.application.routes.draw do
 resources :locations
 resources :karens
 resources :locations do
    resources :karens, only: [:update]
  end
end
