Rails.application.routes.draw do
	# Routed routes

	# Engines
	mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
	devise_for :users

	resources :vendors

	root to: 'static#landing'
end
