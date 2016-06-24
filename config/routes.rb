Rails.application.routes.draw do
	# Routed routes

	# Engines
	mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
	devise_for :users

	# Resources
	resources :vendors

	# Root
	root to: 'static#landing'
end
