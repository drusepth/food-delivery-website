class Vendor < ActiveRecord::Base
	has_one :menu
	has_one :location

	has_many :products, through: :menu

	validates :name, presence: true
end
