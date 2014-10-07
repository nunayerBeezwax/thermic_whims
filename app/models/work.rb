class Work < ActiveRecord::Base

	acts_as_taggable

	has_and_belongs_to_many :fountains

	attr_accessible :tag_list, :fountain_ids, :full_text, :title, :link


  rails_admin do 
    list do 
      field :title
      field :link
    end

    edit do
      field :title
      field :link
      field :full_text
      field :tag_list do
      	label "Tags"
        html_attributes do
          {:style => "width:90%"}
        end
      end
    end
  end
end