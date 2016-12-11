class Slot < ActiveRecord::Base
	has_many :schedule
	#belongs_to :delivery
end
