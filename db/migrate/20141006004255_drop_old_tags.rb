class DropOldTags < ActiveRecord::Migration
  def change

  	drop_table :tags
  	drop_table :tags_videos
  	drop_table :memes_tags
  	drop_table :fountains_tags
  	drop_table :meme_comments
  	drop_table :video_comments

  end
end
