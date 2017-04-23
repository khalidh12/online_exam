class Subscribe < ActiveRecord::Base
	validates_presence_of :name,:email,:pin,:mobile
	validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
	validates_uniqueness_of :email
	validates :mobile,:presence => true,
                 :numericality => true,
                 :length => { :minimum => 10, :maximum => 10 }
end
