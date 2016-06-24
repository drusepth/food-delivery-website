class Product < ActiveRecord::Base
	belongs_to :menu#_category

	delegate :vendor, to: :menu#_category
	#delegate :menu,   to: :menu#_category

	has_many :product_addons

	validates :name,       presence: true
	validates :price,      presence: true
	validates :people_fed, presence: true
end
