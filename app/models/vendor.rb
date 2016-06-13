class Vendor < ActiveRecord::Base
	has_many :menus
	has_many :products, through: :menus

	validates :name, presence: true
end
