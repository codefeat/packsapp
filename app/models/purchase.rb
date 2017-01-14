class Purchase < ActiveRecord::Base
	after_create :email_purchaser
	def to_param
    	uuid
    end

    def email_purchaser
    	MyMailer.new_purchase(self).deliver_now
    end

    belongs_to :plan
end
