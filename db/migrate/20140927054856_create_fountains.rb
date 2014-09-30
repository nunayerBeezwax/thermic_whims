class CreateFountains < ActiveRecord::Migration
  def change
    create_table :fountains do |t|

    	t.string :name
    	t.string :department
    	t.string :pic_url
    	t.string :homepage_url
    	t.string :dates

    end
  end
end
