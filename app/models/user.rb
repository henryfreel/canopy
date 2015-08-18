class User < ActiveRecord::Base
  has_many :projects, dependent: :destroy
  has_secure_password

  def full_name
    "#{first_name} #{last_name}"
  end

  has_attached_file :avatar,
  					:styles => { :medium => "150x150>", :thumb => "44x44#" },
  					:storage => :s3,
  					:s3_credentials => Proc.new { |a| a.instance.s3_credentials },
  					:path => "avatar/:id/:style/avatar.:extension",
  					:default_url => "https://s3.amazonaws.com/project-canopy/defaults/default_avatar.png"
            
  validates_attachment :avatar, 
  						:content_type => { :content_type => ["image/jpeg", "image/gif", "image/png", "image/jpg"]},
  						:size => { :in => 0..100.kilobytes}

  def s3_credentials
  	{:bucket => ENV['S3_BUCKET'], :access_key_id => ENV['S3_PUBLIC_KEY'], :secret_access_key => ENV['S3_SECRET']}
  end	

end
