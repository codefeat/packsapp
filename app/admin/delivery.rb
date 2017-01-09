ActiveAdmin.register Delivery do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
#permit_params :list, :of, :attributes, :on, :model, :name, :address, :phone, :size, :image, :user_id, :user_packnum
permit_params :list, :of, :attributes, :on, :model, :address, :phone, :user_id, :user_packnum

#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end


end
