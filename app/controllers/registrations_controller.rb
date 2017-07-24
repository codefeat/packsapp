class RegistrationsController < Devise::RegistrationsController
  #after_action :check_promo
  # def create
  #   super
  #   if @user
  #     UserMailer.new_registration(@user).deliver_now
  #   end
  # end
def check_promo
  if Promo.exists?(:code => params[:promo_code] )
    @promos = Promo.all

    @promo = @promos.id

    raise 'foo'
  end
end  


def coupon
  @coupon = params[:promo_code]
end
def show
    self.resource = resource_class.confirm_by_token(params[:confirmation_token])

    if resource.errors.empty?
      set_flash_message(:notice, :confirmed) if is_navigational_format?
      sign_in(resource_name, resource)
      respond_with_navigational(resource){ redirect_to
            after_confirmation_path_for(deliveries, resource) }
    else
      flash[:notice] = "Your account is already confirmed. Please login."
      redirect_to '/login'
    end
  end

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