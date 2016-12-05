class Appointment < ActiveRecord::Base
	belongs_to :user

	has_many :slots
	has_many :days
end
