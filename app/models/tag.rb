class Tag < ActiveRecord::Base

	has_and_belongs_to_many :memes
	has_and_belongs_to_many :videos
	has_and_belongs_to_many :fountains

	attr_accessible :meme_ids, :fountain_ids, :video_ids, :paper_ids, :title

end