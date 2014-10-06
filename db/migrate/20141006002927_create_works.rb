class CreateWorks < ActiveRecord::Migration
  def change
    create_table :works do |t|

    	t.string :title
    	t.string :link
    	t.text :full_text
    	
    end
  end
end
