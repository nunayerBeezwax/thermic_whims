class TagsController < ApplicationController

	def index
		@tags = ActsAsTaggableOn::Tag.all
	end

	def show
		@tag = ActsAsTaggableOn::Tag.find(params[:id])
		memes_with_tag = []
		Meme.all.each do |meme|
			if meme.tag_list.include?(@tag.name)
				memes_with_tag << meme
			end
		end
		@memes = memes_with_tag		

		videos_with_tag = []
		Video.all.each do |video|
			if video.tag_list.include?(@tag.name)
				videos_with_tag << meme
			end
		end
		@videos = videos_with_tag		

		works_with_tag = []
		Work.all.each do |work|
			if work.tag_list.include?(@tag.name)
				works_with_tag << work
			end
		end
		@works = works_with_tag
	end

end