Rails.application.routes.draw do

  root to: 'welcome#index'

  resources :search, only: :index

end
