class Create < ActiveRecord::Migration
  def change

  	create_table :fountains_videos do |t|
	  	t.belongs_to :fountain
	  	t.belongs_to :video
	end
  end
end
