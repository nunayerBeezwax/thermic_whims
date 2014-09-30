class Fountain < ActiveRecord::Base

	has_and_belongs_to_many :videos
	has_and_belongs_to_many :memes

	attr_accessible :video_ids, :meme_ids, :name, :department,
					:pic_url, :homepage_url, :dates

end