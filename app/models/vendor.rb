class Vendor < ActiveRecord::Base
	has_one :menu
	has_one :location

	has_many :products, through: :menu

	validates :name, presence: true
	validates :location, presence: true
	validates :cuisine, presence: true
	validates :open_at, presence: true
	validates :close_at, presence: true
	validates :delivery_minimum, presence: true
end
