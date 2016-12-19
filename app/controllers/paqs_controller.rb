class PaqsController < ApplicationController
  before_action :authenticate_user!, except: [:step1]
  def address
  end
  
  def deliver
  end

  def pickup
  end

  def pay
    @product = Product.find_by_sku("npmdpkg")
  end

  def how1
  end

  def how2
  end

  def how3
  end

  def how4
  end

  def how5
  end

  def how6
  end

  def step1
  end

  def step2
  end

  def step3
  end

  def step4
  end

  def step5
  end

  def step6
  end

  def step7
  end

  def step8
  end
end
