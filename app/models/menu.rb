class Menu < ActiveRecord::Base
	belongs_to :vendor

	has_many :menu_categories
	has_many :products, through: :menu_categories
end
