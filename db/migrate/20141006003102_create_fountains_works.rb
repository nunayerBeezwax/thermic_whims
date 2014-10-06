class CreateFountainsWorks < ActiveRecord::Migration
  def change
    create_table :fountains_works do |t|

    	t.belongs_to :fountain
    	t.belongs_to :work
    	
    end
  end
end
