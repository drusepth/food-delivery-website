class Vendor < ActiveRecord::Base
	has_one :menu
	has_many :products, through: :menus

	validates :name, presence: true
end
