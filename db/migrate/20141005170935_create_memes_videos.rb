class CreateMemesVideos < ActiveRecord::Migration
  def change
    create_table :memes_videos do |t|

    	t.belongs_to :meme
    	t.belongs_to :video
    	
    end
  end
end
