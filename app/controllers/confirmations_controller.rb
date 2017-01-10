class ConfirmationsController < Devise::ConfirmationsController
  private
  def after_confirmation_path_for(deliveries, resource)
    root_path
  end
end