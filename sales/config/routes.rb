Rails.application.routes.draw do
  get 'welcome/index'

  resources :suppliers do
	  resources :products
	end

  root 'welcome#index'
end
