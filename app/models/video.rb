class Video < ActiveRecord::Base

	# has_many :video_comments
	# has_many :fountains
	# has_many :memes, through: :fountains

	def construct_embed_url
		"http://" + self.url + "?hd=1&rel=0&autohide=1&showinfo=0"
	end
end