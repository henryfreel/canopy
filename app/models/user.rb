class User < ActiveRecord::Base
  has_many :projects, dependent: :destroy
  has_secure_password

  has_attached_file :avatar,
  					:styles => { :medium => "150x150>", :thumb => "44x44#" },
  					:default_url => "/images/:style/missing.png"
  validates_attachment :avatar, :presence => true,
  						:content_type => { :content_type => ["image/jpeg", "image/gif", "image/png", "image/jpg"]},
  						:size => { :in => 0..10.kilobytes}

end
