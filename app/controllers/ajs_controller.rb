class AjsController < ApplicationController
  def index
  # 	@users=User.all
  # 	@sub=Submitque.all
  # 	@ecet = Ecet.all
  # 	@users.each do |u|
  # 		subject=["ece", "eee", "cse", "civil"]
  		
  # 		subject.each do |subj|
  # 		@i=0
  # 		@ss = subj
  # 		@sub = Submitque.where(:userid => u.id, :subject => subj)
  		
  # 		@sub.each do |s|
  # 			@q = Ecet.find(s.question)
  # 			if s.answer == @q.t
  # 				@i+=1
  				
  # 			end	
  # 		end
  		
  		
  # 		puts "User:#{u.id}  True:#{@i} atmpt:#{@sub.count} subject:#{subj}"
  		
  # 		end
  # 	end
  end
end
