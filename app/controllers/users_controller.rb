class UsersController < ApplicationController
  def show
  	@user = current_user
  	@subscriptions = Subscription.all
  	@subscription = current_user.subscriptions
  	@plans = Plan.all
  end
end