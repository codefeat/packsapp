class SchedulesController < InheritedResources::Base

def new
	@schedule = Schedule.new
	@delivery = @user.deliveries.all if @user
	@deliveries = Delivery.all
end

def create
	@schedule = Schedule.new(schedule_params)
	@delivery = @user.deliveries.all if @user
	@deliveries = Delivery.all
 	respond_to do |format|
      if @schedule.save
        format.html { redirect_to @schedule, notice: 'schedule was successfully created.' }
        format.json { render :show, status: :created, location: @schedule }
      else
        format.html { render :new }
        format.json { render json: @schedule.errors, status: :unprocessable_entity }
      end
    end
  end
  private

    def schedule_params
      params.require(:schedule).permit(:day, :slot_id, :delivery_id)
    end
end

