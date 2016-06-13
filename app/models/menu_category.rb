class MenuCategory < ActiveRecord::Base
	belongs_to :menu

	delegate :vendor, to: :menu

	has_many :products

	validates :name, presence: true
	validates :menu, presence: true
end
