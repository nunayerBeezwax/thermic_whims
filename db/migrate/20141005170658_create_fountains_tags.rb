class CreateFountainsTags < ActiveRecord::Migration
  def change
    create_table :fountains_tags do |t|

    	t.belongs_to :fountain
    	t.belongs_to :tag
    	
    end
  end
end
