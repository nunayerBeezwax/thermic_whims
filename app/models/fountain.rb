class Fountain < ActiveRecord::Base

	acts_as_taggable

	has_and_belongs_to_many :videos
	has_and_belongs_to_many :memes
	has_and_belongs_to_many :tags
	has_and_belongs_to_many :works

	attr_accessible :tag_list, :video_ids, :meme_ids, :work_ids, :tag_ids, :name, :department,
					:pic_url, :homepage_url, :dates


  rails_admin do 
    list do 
      field :name
      field :department
    end

    edit do
      field :name
      field :department
      field :pic_url
      field :homepage_url
      field :dates do
      	label "Lifespan"
      end
      field :tag_list do
      	label "Tags"
        html_attributes do
          {:style => "width:90%"}
        end
      end
    end
  end
end