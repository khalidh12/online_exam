class QuesionsController < ApplicationController

  def index
  	@ecet = Ecet.new
    @subjects = Subject.all
    @cets = Cet.all
  end

 
    def show

    end

    def new
        @ecet = Ecet.new
    end

    def edit

    end


  def addquestions
  	@ecet = Ecet.new
  	@ecet = Ecet.new(que_params)

                  if @ecet.save 
                      redirect_to '/addquestion',  notice: 'Question was successfully added'

                  else
                        redirect_to '/addquestion', alert: 'Something Wrong Please Check'
                        
                    end
              
  end

  private

   def que_params
      	params.require(:ecet).permit(:subject,:question,:a,:b,:c,:d,:t,:tc,:cet)
    end
end
