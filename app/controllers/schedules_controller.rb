class SchedulesController < InheritedResources::Base



def new
  @user = current_user
	@schedule = Schedule.new
	@delivery = @user.deliveries.all if @user
	@deliveries = Delivery.all
  @subscriptions = Subscription.where(user_id: @user)
  #@subscription = @user.subscriptions



  
end

def edit
  @schedule = Schedule.find(params[:id])
  @delivery = @user.deliveries.all if @user
  @deliveries = Delivery.all
   @subscriptions = Subscription.where(user_id: @user)
end

def check_subscription

end

def create
  @user = current_user
	@schedule = Schedule.new(schedule_params)
	@delivery = @user.deliveries.all if @user
	@deliveries = Delivery.all
  @subscription = @user.deliveries.all if @user
  #@subscriptions = Subscription.all
  @subscriptions = Subscription.where(user_id: @user)
  
  #raise "foo"

 	respond_to do |format|
      if @schedule.save
        @getDelivery = Delivery.find(params[:schedule][:delivery_id])
        #        format.html { redirect_to schedule_subscription_path(@schedule, params[:schedule][:subscription_id]), notice: 'schedule was successfully created.' }
        format.html { redirect_to url_for(:controller => 'subscriptions', :action => 'pay', :id => params[:schedule][:subscription_id], :did => params[:schedule][:delivery_id], :oid => params[:schedule][:orderNum])  }
        format.json { render :show, status: :created, location: @schedule }
      else
        format.html { render :new }
        format.json { render json: @schedule.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @delivery = @user.deliveries.all if @user
    @deliveries = Delivery.all

    @schedule = Schedule.find(params[:id])
    respond_to do |format|
      if @schedule.update(schedule_params)
        format.html { redirect_to @schedule, notice: 'delivery was successfully updated.' }
        format.json { render :show, status: :ok, location: @schedule }
      else
        format.html { render :edit }
        format.json { render json: @schedule.errors, status: :unprocessable_entity }
      end
    end
  end

  private

    def schedule_params
      params.require(:schedule).permit(:day, :slot_id, :delivery_id, :window, :subscription_id)
    end


end

