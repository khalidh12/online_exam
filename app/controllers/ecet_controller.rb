class EcetController < ApplicationController
  before_action :authenticate_user!
  def index
    tc = params[:id]
  	@ecet = Ecet.new
    @subjects = Subject.all
    @cets = Cet.all
    @comptest = Comptest.all
    @mc = Ecet.where(:subject => "Mathematics", :tc => tc)
    @pc = Ecet.where(:subject => "Physics", :tc => tc)
    @cc = Ecet.where(:subject => "Chemistry", :tc => tc)
    @civc = Ecet.where(:subject => "Civil", :tc => tc)
    @eec = Ecet.where(:subject => "Electrical & Electronics", :tc => tc)
    @ecc = Ecet.where(:subject => "Electronics & Communication", :tc => tc)
    @csc = Ecet.where(:subject => "Computer Science and Engineering", :tc => tc)
    @mecc = Ecet.where(:subject => "Mechanical", :tc => tc)

  end

  def ecetform

     tc = params[:id]
    @ecet = Ecet.new
    @subjects = Subject.all
    @cets = Cet.all
    @mc = Ecet.where(:subject => "Mathematics", :tc => tc)
    @pc = Ecet.where(:subject => "Physics", :tc => tc)
    @cc = Ecet.where(:subject => "Chemistry", :tc => tc)
    @civc = Ecet.where(:subject => "Civil", :tc => tc)
    @eec = Ecet.where(:subject => "Electrical & Electronics", :tc => tc)
    @ecc = Ecet.where(:subject => "Electronics & Communication", :tc => tc)
    @csc = Ecet.where(:subject => "Computer Science and Engineering", :tc => tc)
    @mecc = Ecet.where(:subject => "Mechanical", :tc => tc)
    

  end

   def addecet
    @testcount = Ecet.where(:tc => ecet_params['tc'])
    puts @testcount.all
  	@ecet = Ecet.new
  	@ecet = Ecet.new(ecet_params)

                  if @ecet.save 
                      redirect_to "/ecetform/#{ecet_params['tc']}",  notice: 'Ecet Question was successfully added'

                  else
                        redirect_to '/ecetform', alert: 'Something Wrong Please Check'
                        
                    end
              
  end

  private

   def ecet_params
      	params.require(:ecet).permit(:subject,:question,:a,:b,:c,:d,:t,:tc,:cet)
    end

end
