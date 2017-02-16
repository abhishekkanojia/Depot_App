class StoreController < ApplicationController
  def index
  	time = Time.new
  	@time = time.strftime("%H:%M:%S %p")
  	@product = Product.order(:title)

  	# defining session

  	if session[:count].nil?
  		session[:count] = 0
  	else
  		session[:count]+=1
  	end

  	@page_visits = session[:count] if session[:count] >= 5

  end
end
