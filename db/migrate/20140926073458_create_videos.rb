class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|

    	t.string :url
    	t.string :title
    	
    end
  end
end
