class ProductAddon < ActiveRecord::Base
	belongs_to :product

	delegate :vendor, to: :product
end
