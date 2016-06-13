class MenuCategory < ActiveRecord::Base
	belongs_to :menu

	delegate :vendor, to: :menu

	has_many :products
end
