class HomeController < ApplicationController
  def hello
  	@time = Time.now
  	@users = User.all
  	# @request = request
  	# @response = response
  end

  def goodbye
  	@tomorrow = Date.today + 1.day
  end
end
