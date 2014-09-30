class CreateMemes < ActiveRecord::Migration
  def change
    create_table :memes do |t|

    	t.text :text
    	t.string :source_url
    	
    end
  end
end
