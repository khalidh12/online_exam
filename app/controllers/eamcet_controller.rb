class EamcetController < ApplicationController

  	def index
  		@eamcet = Eamcet.new
  	end


    def show

    end

    def new
        @emacet = Eamcet.new
    end

    def edit

    end

	def addeamcet
	  	@eamcet = Eamcet.new
	  	@eamcet = Eamcet.new(eamcet_params)

	     if @eamcet.save 
	        redirect_to '/eamcetform',  notice: 'Eamcet Question was successfully added'
	    else
	        redirect_to '/eamcetform', alert: 'Something Wrong Please Check'
	    end
	              
	  end

  private

   def eamcet_params
      	params.require(:eamcet).permit(:subject,:question,:a,:b,:c,:d,:t,:tc,:cet)
    end

end
