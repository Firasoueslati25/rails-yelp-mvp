Rails.application.routes.draw do
  resources :restaurants do
    resources :reviews, only: [ :new, :create ]
  end

  resources :restaurants do
    resources :reviews
  end
end

Rails.application.routes.draw do
  resources :restaurants do
    resources :reviews, only: [ :new, :create ]
  end
  resources :reviews, only: [ :destroy ]
end
