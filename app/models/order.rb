class Order < ActiveRecord::Base
	belongs_to :user
	belongs_to :vendor

	has_many :products
	has_many :product_addons, through: :products
end
