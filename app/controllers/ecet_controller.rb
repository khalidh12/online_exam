class EcetController < ApplicationController
  def index
  	@ecet = Ecet.new
    @subjects = Subject.all
    @cets = Cet.all
  end

   def addecet
  	@ecet = Ecet.new
  	@ecet = Ecet.new(ecet_params)

                  if @ecet.save 
                      redirect_to '/ecetform',  notice: 'Ecet Question was successfully added'

                  else
                        redirect_to '/ecetform', alert: 'Something Wrong Please Check'
                        
                    end
              
  end

  private

   def ecet_params
      	params.require(:ecet).permit(:subject,:question,:a,:b,:c,:d,:t,:tc,:cet)
    end

end
