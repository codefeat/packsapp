class Purchase < ActiveRecord::Base
	after_create :email_purchaser
	def to_param
    	uuid
    end

    def email_purchaser
    	MyMailer.purchase_receipt(self).deliver
    end
end
