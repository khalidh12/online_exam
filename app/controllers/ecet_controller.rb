class EcetController < ApplicationController
  before_action :authenticate_user!
  def index
    tc = params[:id]
  	@ecet = Ecet.new
    @subjects = Subject.all
    @cets = Cet.all
    @comptest = Comptest.where(:comp => "yes")
    @ecetcompleted = Comptest.new
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
     @ecetcompleted = Comptest.new
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

  def ecetcompleted
    @comptest = Comptest.new(ecetcompleted_params)
    @comptest.comp = "yes"
    puts ecetcompleted_params['tc']
    if @comptest.save 
      redirect_to "/ecetform/",  notice: 'Ecet TEST was successfully added'
    else
      redirect_to '/ecetform', alert: 'Something Wrong Please Check'
    end

  end

  private

   def ecet_params
      	params.require(:ecet).permit(:subject,:question,:a,:b,:c,:d,:t,:tc,:cet)
    end

    def ecetcompleted_params
        params.require(:comptest).permit(:cet,:com,:tc)
    end

end
