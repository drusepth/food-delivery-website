class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  geocode_ip_address
end
