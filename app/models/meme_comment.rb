class MemeComment < ActiveRecord::Base

	belongs_to :meme
	belongs_to :user

	attr_accessible :meme, :user, :text

end