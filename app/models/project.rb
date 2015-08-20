class Project < ActiveRecord::Base
  belongs_to :user
  
  has_many :likes
  has_many :users, through: :likes

  before_save :screenshot_from_url

  validates :title,
  	presence: true,
  	length: {maximum: 255}
  validates :description,
  	presence: true
  validates :live_url, :github_url, 
    presence: true, 
    length: {maximum: 255},
    format: {
      with: /https:/, 
      message: "must start with https://"
    }

  attr_accessor :screenshottmp

  has_attached_file :screenshot,
            :styles => { :medium => "150x150>", :thumb => "44x44#" },
            :storage => :s3,
            :s3_credentials => Proc.new { |a| a.instance.s3_credentials },
            :path => "screenshot/:id/:style/screenshot.:extension",
            :default_url => "https://s3.amazonaws.com/project-canopy/defaults/default_screenshot.png"
            
  validates_attachment :screenshot, 
              :content_type => { :content_type => ["image/jpeg", "image/gif", "image/png", "image/jpg"]},
              :size => { :in => 0..10000.kilobytes}


  def screenshot_from_url
    self.screenshot = URI.parse(screenshottmp)
  end


  def s3_credentials
    {:bucket => ENV['S3_BUCKET'], :access_key_id => ENV['S3_PUBLIC_KEY'], :secret_access_key => ENV['S3_SECRET']}
  end

end

