class AdminController < ApplicationController
 before_action :authenticate_user!

if current_user.role == "admin"
  def index
  	users = User.all
  	@users = users.count
  	comptests = Comptest.all
  	@comptests = comptests.count
  end
else
	redirect_to "/"
end
end