class VideoComment < ActiveRecord::Base

	belongs_to :video
	belongs_to :user

	attr_accessible :video, :user, :text

end

