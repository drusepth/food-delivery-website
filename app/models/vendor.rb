class Vendor < ActiveRecord::Base
	has_many :menus
	has_many :products, through: :menus


end
