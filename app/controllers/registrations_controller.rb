class RegistrationsController < Devise::RegistrationsController
  # def create
  #   super
  #   if @user
  #     UserMailer.new_registration(@user).deliver_now
  #   end
  # end


  def confirmation_token
        if self.confirmation_token.blank?
            self.confirmation_token = SecureRandom.urlsafe_base64.to_s
        end
      end
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

  private
  def after_confirmation_path_for(resource)
     paqs_how1_path
  end

    
end