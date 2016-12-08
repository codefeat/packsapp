class Schedule < ActiveRecord::Base
	has_many :slots
	has_many :deliveries
end
