class Slot < ActiveRecord::Base
	belongs_to :appointment
	belongs_to :delivery
end
