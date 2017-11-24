Rails.application.routes.draw do

	# Routed routes

	# Cart actions
    get 'cart/add_to'

	# Engines
	mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
	devise_for :users

	# Resources
	resources :vendors

	# Root
	root to: 'static#landing'
end
