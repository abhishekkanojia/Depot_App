class AdminController < ApplicationController
  def index
  	@time  = Time.now
  	@total_orders = Order.count
  	@order = Order.all()
  end
  
end
