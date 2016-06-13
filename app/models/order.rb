class Order < ActiveRecord::Base
	belongs_to :user
	belongs_to :vendor

	has_many :products
	has_many :product_addons, through: :products

	validates :user,   presence: true
	validates :vendor, presence: true
	validates :status, presence: true
end
