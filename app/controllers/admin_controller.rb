class AdminController < ApplicationController
  def index
  	@cets = Cet.all
  end
end
