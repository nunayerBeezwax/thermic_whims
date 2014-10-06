class Fountain < ActiveRecord::Base

	acts_as_taggable

	has_and_belongs_to_many :videos
	has_and_belongs_to_many :memes
	has_and_belongs_to_many :tags
	has_and_belongs_to_many :works

	attr_accessible :tag_list, :video_ids, :meme_ids, :work_ids, :tag_ids, :name, :department,
					:pic_url, :homepage_url, :dates

end