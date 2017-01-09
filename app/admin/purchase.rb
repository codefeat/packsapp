ActiveAdmin.register Purchase do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :list, :of, :attributes, :on, :model, :email, :amount, :description, :currency, :customer_id, :card, :product_id, :uuid
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

before_filter do
	Purchase.class_eval do
		def to_param
			id.to_s
		end
	 end
  end
end
