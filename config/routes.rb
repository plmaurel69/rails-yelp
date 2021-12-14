Rails.application.routes.draw do
  resources :restaurants, only: [:create, :new, :index, :show] do
    resources :reviews, only: [ :new, :create ]
      get :reviews, only: [:create, :new]
  end
end
