class ExamController < ApplicationController
  def index
  	# @questions = Ecet.where(:subject =>"Mathematics")
  	@questions = Ecet.paginate(:page => params[:page], :per_page => 1)
  	@submitque =Submitque.new
  end


    def show

    end

    def edit

    end

	def new
        @submitque = Submitque.new
    end

  def submitque
  	@submitque = Submitque.new
  	@submitque = Submitque.new(sub_params)
  	@submitque.userid = current_user.id
  		if @submitque.save
  			redirect_to "/exam", notice: "Next Question"
  		else
  			redirect_to "/exam", alert: "error"
  		end
  end

  def nextsubmit
    @nextsubmit = @questions.find_by(:id)
  end

  private

  	def sub_params
  		params.require(:submitque).permit(:question,:answer,:userid)
  	end
end
