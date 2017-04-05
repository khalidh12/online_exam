class ExamController < ApplicationController
  before_action :authenticate_user!
  def index
  	# @questions = Ecet.where(:subject =>"Mathematics")
    if params[:subject] = "cse"
      @sub = "Computer Science and Engineering"
      @subject ="cse"
    elsif params[:subject] = "ece"
      @sub = "Electronics & Communication"
      @subject = "ece"
    elsif params[:subject] = "eee"
      @sub ="Electrical & Electronics"
      @subject = "eee"
    else
      @subject = params[:subject]
      @sub = params[:subject]
    end

    tc = params[:id]
    # @subject = params[:subject]
    @questions = Ecet.where(:tc => tc, :subject => ['Mathematics', 'Physics', 'Chemistry' ,@sub]).paginate(:page => params[:page], :per_page => 1)
  	# @questions = Ecet.where(:tc => tc).paginate(:page => params[:page], :per_page => 1)
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
    tc = sub_params['tc']
    pag = sub_params['pag']
    @questions = Ecet.where(:tc => tc)
    
  		if @submitque.save
  			redirect_to "/exam/#{tc}/#{sub_params['subject']}?page=#{pag}", notice: "Question Submited"
  		else
              if pag == @questions.count.to_s
                 
                 redirect_to "/exam/#{tc}/#{sub_params['subject']}?page=#{pag}", alert: "error"
            
              else
                  redirect_to "/exam/#{tc}/#{sub_params['subject']}?page=#{pag}-1", alert: "error else"
              end
  		end
  end

  def ecetresults
    tc = params[:id]
    subject = params[:subject]
    @ecetresults = Submitque.where(:tc => tc, :userid => current_user, :subject => ['Mathematics', 'Physics', 'Chemistry' ,params[:subject]])
    @questions = Ecet.where(:tc => tc, :subject => ['Mathematics', 'Physics', 'Chemistry' ,params[:subject]])
  end


  def nextsubmit
    @nextsubmit = @questions.find_by(:id)
  end

  private

  	def sub_params
  		params.require(:submitque).permit(:question,:answer,:userid,:tc,:pag,:subject)
  	end
end
