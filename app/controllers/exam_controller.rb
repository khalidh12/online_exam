class ExamController < ApplicationController
  before_action :authenticate_user!
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
    puts pag = sub_params['pag']
    @questions = Ecet.where(:tc => tc)
    
  		if @submitque.save
  			redirect_to "/exam/#{tc}?page=#{pag}", notice: "Question Submited"
  		else
              if pag == @questions.count.to_s
                 
                 redirect_to "/exam/#{tc}?page=#{pag}", alert: "error"
            
              else
                  redirect_to "/exam/#{tc}?page=#{pag}-1", alert: "error else"
              end
  		end
  end

  def ecetresult
    @ecetresult = Submitque.where(:tc => params[:id])
  end

  def nextsubmit
    @nextsubmit = @questions.find_by(:id)
  end

  private

  	def sub_params
  		params.require(:submitque).permit(:question,:answer,:userid,:tc,:pag)
  	end
end
