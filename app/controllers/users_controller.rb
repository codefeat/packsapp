class UsersController < ApplicationController
  def show
  	@user = current_user
  	@subscriptions = Subscription.all
  	@subscription = current_user.subscriptions
  	@plans = Plan.all
  end

  def create
      @user = User.new(user_params) 
      respond_to do |format|   
      if @user.save
          UserMailer.registration_confirmation(@user).deliver_now
          format.html {redirect_to root_url, notice: "Please confirm your email address to continue"}
          #flash[:success] = "Please confirm your email address to continue"
          AdminMailer.new_user(@user).deliver_now
          #redirect_to root_url
        else
          format.html { render :new }
          format.json { render json: @user.erros, status: :unprocessable_entity }
          #flash[:error] = "Ooooppss, something went wrong!"
          #render 'new'
        end
      end

  end
  
end