class CreateMemesTags < ActiveRecord::Migration
  def change
    create_table :memes_tags do |t|

    	t.belongs_to :meme
    	t.belongs_to :tag
    	
    end
  end
end
