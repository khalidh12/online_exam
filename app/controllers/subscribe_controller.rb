class SubscribeController < ApplicationController
  def index
  	@subscribe = Subscribe.new
  end

  def subscribed
  	# @subscribe = Subscribe.new
  	@subscribe = Subscribe.new(subscribe_params)
	if @subscribe.save 
        redirect_to '/ap-apsbtet-results',  notice: 'Thank you for subscribing us'
    else
        redirect_to '/ap-apsbtet-results', alert: 'Something wrong please retry'                 
    end

  end

  private
  	def subscribe_params
  		params.require(:subscribe).permit(:name, :email, :pin, :mobile,:state)
  	end

end
