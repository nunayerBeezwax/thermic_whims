class CreateMemeComments < ActiveRecord::Migration
  def change
    create_table :meme_comments do |t|

    	t.belongs_to :user
    	t.belongs_to :meme
    	t.text :text
    	
    end
  end
end
