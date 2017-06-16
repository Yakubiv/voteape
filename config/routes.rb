Rails.application.routes.draw do
  root 'posts#index'

  resources :posts, only: [:index, :create] do
    resource :votes, only: [:create, :destroy]
  end
end
