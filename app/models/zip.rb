class Zip < ActiveRecord::Base
	has_many :users
	has_many :userzipcodes
end
