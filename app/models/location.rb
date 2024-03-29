class Location < ActiveRecord::Base
	acts_as_mappable :default_units => :kms,
		:default_formula     => :sphere,
		:distance_field_name => :distance,
		:lat_column_name     => :lat,
		:lng_column_name     => :lng

	belongs_to :user
	belongs_to :vendor
end
