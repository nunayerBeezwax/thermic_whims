class Video < ActiveRecord::Base

	acts_as_taggable

	has_and_belongs_to_many :fountains
	has_and_belongs_to_many :tags
	has_and_belongs_to_many :memes
	has_many :video_comments

	attr_accessible :tag_list, :fountain_ids, :tag_ids, :meme_ids, :video_comment_ids, :url, :title

	def construct_embed_url
		"http://" + self.url + "?hd=1&rel=0&autohide=1&showinfo=0"
	end
end