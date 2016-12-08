class DeliveriesController < ApplicationController
  before_action :set_delivery, only: [:show, :edit, :update, :destroy]
  #before_action :set_order
  before_action :authenticate_user!, except: [:index, :show]
  before_action :check_user, except: [:index, :show]
 
  
  # GET /deliveries
  # GET /deliveries.json
  def index
    @user = current_user
    @deliveries = Delivery.all
    @orders = Order.all
    @order = @user.orders.all if @user
    #@delivery = Delivery.find(params[:order_id])
  end

  # GET /deliveries/1
  # GET /deliveries/1.json
  def show
    @reviews =Review.where(delivery_id: @delivery.id).order("created_at DESC") 
    if @reviews.blank?
      @avg_rating = 0
    else
      @avg_rating = @reviews.average(:rating).round(2)
    end
  end

  # GET /deliveries/new
  def new
    @delivery = Delivery.new
    @user = current_user
    @orders = Order.all
    @order = @user.orders.all if @user
    @slot = Slot.all
    @appointment = Appointment.all
    @day = Day.all
  end

  # GET /deliveries/1/edit
  def edit
  end


  # POST /deliveries
  # POST /deliveries.json
  def create
    @delivery = Delivery.new(delivery_params)
    @user = current_user
    @orders = Order.all
    @order = @user.orders.all if @user
    @slot = Slot.all
    @appointment = Appointment.all
    @day = Day.all

    respond_to do |format|
      @delivery.user_id = current_user.id
      @delivery.user_packnum = current_user.packs_num
      #@slotid = @slot.id
      if @delivery.save

        #Appointment.create!(:delivery_id => @delivery.id, :slot_id => @delivery[:appt_id])
        Appointment.create!(:slot_id => @delivery[:appt_id])
        format.html { redirect_to @delivery, notice: 'delivery was successfully created.' }
        format.json { render :show, status: :created, location: @delivery }
      else
        format.html { render :new }
        format.json { render json: @delivery.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /deliveries/1
  # PATCH/PUT /deliveries/1.json
  def update
    respond_to do |format|
      if @delivery.update(delivery_params)
        format.html { redirect_to @delivery, notice: 'delivery was successfully updated.' }
        format.json { render :show, status: :ok, location: @delivery }
      else
        format.html { render :edit }
        format.json { render json: @delivery.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /deliveries/1
  # DELETE /deliveries/1.json
  def destroy
    @delivery.destroy
    respond_to do |format|
      format.html { redirect_to deliveries_url, notice: 'delivery was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_delivery
      @delivery = Delivery.find(params[:id])
    end


    def check_user
      unless current_user.admin? || user_signed_in?
        redirect_to root_url, alert: "Sorry, only site or account admins can do that!"
      end
    end
    
    # Never trust parameters from the scary internet, only allow the white list through.
    def delivery_params
      params.require(:delivery).permit(:name, :address, :phone, :size, :image, :order_id, :delivery_id, :slot_id)
    end
end
