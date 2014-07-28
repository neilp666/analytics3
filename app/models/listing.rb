class Listing < ActiveRecord::Base

	if Rails.env.development?
		has_attached_file :image, :styles => { :thumb => "150x150>" }, :default_url => "missing.png"
	    validates_attachment_content_type :image, content_type: %w(image/jpeg image/jpg image/png)

	else
		has_attached_file :image, :styles => { :thumb => "150x150"},
    	:storage => :dropbox,
   	    :dropbox_credentials => Rails.root.join("config/dropbox.yml"),
   	    :path => ":style/id_:filename"
	end
		validates_attachment_content_type :image, :content_type => %w(image/jpeg image/jpg image/png) 
     	validates :job, :description, :location, :apply, :company, :url, :about, presence: true

end
