class RegistrationsController < Devise::RegistrationsController
  protected


 # after_action :create_subscription


  def after_sign_up_path_for(resource)
    #'/an/example/path' # Or :prefix_to_your_route
    
    if create_subscription
    	  paqs_how1_path
    	end
  end

  def profile
  end
end