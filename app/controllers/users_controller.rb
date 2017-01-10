class UsersController < ApplicationController
  def show
  	@user = current_user
  	@subscriptions = Subscription.all
  	@subscription = current_user.subscriptions
  	@plans = Plan.all
  end

  def create
        @user = User.new(user_params)    
      if @user.save
        UserMailer.registration_confirmation(@user).deliver
        flash[:success] = "Please confirm your email address to continue"
        redirect_to root_url
      else
        flash[:error] = "Ooooppss, something went wrong!"
        render 'new'
      end
  end
  
end