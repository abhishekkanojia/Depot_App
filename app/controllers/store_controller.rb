class StoreController < ApplicationController
  def index
  	time = Time.new
  	@time = time.strftime("%H:%M:%S %p")
  	@product = Product.order(:title)
  end
end
