class AjsController < ApplicationController
  def index
  	@questions = Ecet.all
  end
end
