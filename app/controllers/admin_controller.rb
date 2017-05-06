class AdminController < ApplicationController
 before_action :authenticate_user!


  def index
  	if current_user.role == "admin"
    	users = User.all
    	@users = users.count
    	comptests = Comptest.all
    	@comptests = comptests.count
  	else
  		redirect_to "/"
  	end
  end


	def questions
	if current_user.role == "admin"
		if params[:subject] == "cse"
      @sub = "Computer Science and Engineering"
      @subject ="cse"
    elsif params[:subject] == "ece"
      @sub = "Electronics & Communication"
      @subject = "ece"
    elsif params[:subject] == "eee"
      @sub ="Electrical & Electronics"
      @subject = "eee"
    else
      @subject = params[:subject]
      @sub = params[:subject]
    end

		@questions = Ecet.where(:tc => params[:tc], :subject => ['Mathematics', 'Physics', 'Chemistry', @sub]).order("subject = 'Mathematics' desc").order("subject = 'Physics' desc").order("subject = 'Chemistry' desc").order("subject = '#{@sub}' desc")
	else
		redirect_to "/"
	end

	end
end