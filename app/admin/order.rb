ActiveAdmin.register Order do
after_create do |order|
	PurchaseMailer.new_order(@order).deliver_now
end
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :list, :of, :attributes, :on, :model, :user_id, :order_packnum, :order_size, :order_description, :order_qty, :order_cost, :product_id, :order_status_id, :subscription_id
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end


end
