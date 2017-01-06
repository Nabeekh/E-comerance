Rails.application.routes.draw do
  devise_for :users
  resources :categories do
  	resources :sub_categories do
  		resources :products do
  			resources :orders
  		end
  		end
  	  end

  root 'welcome#index'
end
