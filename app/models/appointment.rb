class Appointment < ActiveRecord::Base
	belongs_to :user
	belongs_to :delivery
	has_many :slots
	has_many :days

	accepts_nested_attributes_for :days, :allow_destroy => true
end
