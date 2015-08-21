class User < ActiveRecord::Base

  has_many :projects, dependent: :destroy
  has_secure_password
  has_many :likes
  has_many :liked_projects, through: :likes, source: :project

  validates :password, length: { minimum: 6 }, on: :create

  validates :email, presence: true, uniqueness: true, format: {
    with: /@/, 
    message: "not a valid email format"
  }

  validates :username, presence: :true, uniqueness: true, on: :create

  validates :linkedin, :github, format: {
    with: /http/, 
    message: "url must start with http"
  }, 
  allow_nil: true, allow_blank: true, on: :update

  validates :location, presence: true

  # default_value_for :location, ""

  def full_name
    "#{first_name} #{last_name}"
  end

  has_attached_file :avatar,
  					:styles => { :medium => "150x150>", :thumb => "44x44#" },
  					:storage => :s3,
  					:s3_credentials => Proc.new { |a| a.instance.s3_credentials },
  					:path => "avatar/:id/:style/avatar.:extension",
  					:default_url => "https://s3.amazonaws.com/development-canopy/defaults/default_avatar.png"
            
  validates_attachment :avatar, 
  						:content_type => { :content_type => ["image/jpeg", "image/gif", "image/png", "image/jpg"]},
  						:size => { :in => 0..1000.kilobytes}

  def s3_credentials
  	{:bucket => ENV['S3_BUCKET'], :access_key_id => ENV['S3_PUBLIC_KEY'], :secret_access_key => ENV['S3_SECRET']}
  end	

end
