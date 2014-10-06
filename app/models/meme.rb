class Meme < ActiveRecord::Base

	acts_as_taggable

	has_and_belongs_to_many :fountains
	has_and_belongs_to_many :videos
	has_and_belongs_to_many :tags
	has_many :meme_comments

	attr_accessible :tag_list, :fountain_ids, :tag_ids, :video_ids, :meme_comment_ids, :text, :source_url, :tag_ids

end