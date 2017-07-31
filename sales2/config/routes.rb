Rails.application.routes.draw do

  get 'welcome/index'

  resources :supplier

  root 'welcome#index'
end
