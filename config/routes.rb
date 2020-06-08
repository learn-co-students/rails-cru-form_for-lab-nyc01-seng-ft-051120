Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :songs, only: [:edit, :index, :new, :create, :update, :show, :destory]

  resources :artists, only: [:edit, :index, :new, :create, :update, :show, :destory]

  resources :genres, only: [:edit, :index, :new, :create, :update, :show, :destory]
end
