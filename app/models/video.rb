class Video < ActiveRecord::Base

	# has_many :video_comments
	has_and_belongs_to_many :fountains
	has_and_belongs_to_many :tags
	has_and_belongs_to_many :memes

	attr_accessible :fountain_ids, :tag_ids, :meme_ids, :url, :title

	def construct_embed_url
		"http://" + self.url + "?hd=1&rel=0&autohide=1&showinfo=0"
	end
end