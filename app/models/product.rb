class Product < ActiveRecord::Base
	belongs_to :menu_category

	delegate :vendor, to: :menu_category
	delegate :menu,   to: :menu_category

	has_many :product_addons
end
