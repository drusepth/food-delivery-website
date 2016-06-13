class ProductAddon < ActiveRecord::Base
	belongs_to :product

	delegate :vendor, to: :product

	validates :name,    presence: true
	validates :product, presence: true
end
