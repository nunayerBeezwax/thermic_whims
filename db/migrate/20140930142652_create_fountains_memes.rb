class CreateFountainsMemes < ActiveRecord::Migration
  def change
    create_table :fountains_memes do |t|
    	t.belongs_to :fountain
    	t.belongs_to :meme
    end
  end
end
