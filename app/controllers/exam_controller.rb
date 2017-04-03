class ExamController < ApplicationController
  def index
  	# @questions = Ecet.where(:subject =>"Mathematics")
    tc = params[:id]
  	@questions = Ecet.where(:tc => tc).paginate(:page => params[:page], :per_page => 1)
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
    puts tc = sub_params['tc']
  		if @submitque.save
  			redirect_to "/exam/#{tc}", notice: "Next Question"
  		else
  			redirect_to "/exam/#{tc}", alert: "error"
  		end
  end

  def nextsubmit
    @nextsubmit = @questions.find_by(:id)
  end

  private

  	def sub_params
  		params.require(:submitque).permit(:question,:answer,:userid,:tc)
  	end
end
