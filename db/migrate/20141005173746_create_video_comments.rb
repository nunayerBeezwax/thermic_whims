class CreateVideoComments < ActiveRecord::Migration
  def change
    create_table :video_comments do |t|

    	t.belongs_to :user
    	t.belongs_to :video
    	t.text :text

    end
  end
end
