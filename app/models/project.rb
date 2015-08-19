class Project < ActiveRecord::Base
  belongs_to :user
  
  before_save :screenshot_from_url

  validates :title, :live_url, :github_url,
  	presence: true,
  	length: {maximum: 255}
  validates :description,
  	presence: true

  attr_accessor :screenshottmp

  has_attached_file :screenshot,
            :styles => { :medium => "150x150>", :thumb => "44x44#" },
            :storage => :s3,
            :s3_credentials => Proc.new { |a| a.instance.s3_credentials },
            :path => "screenshot/:id/:style/screenshot.:extension",
            :default_url => "https://s3.amazonaws.com/project-canopy/defaults/default_screenshot.png"
            
  validates_attachment :screenshot, 
              :content_type => { :content_type => ["image/jpeg", "image/gif", "image/png", "image/jpg"]},
              :size => { :in => 0..100.kilobytes}

  # def set_custom_photo
  #   data = StringIO.new(Base64.decode64(self.screenshottmp))
  #   data.class.class_eval { attr_accessor :original_filename, :content_type }
  #   data.original_filename = "mapimage.png"
  #   data.content_type = "image/png"

  #   self.screenshot = data
  # end

  def screenshot_from_url
    self.screenshot = URI.parse(screenshottmp)
  end


  def s3_credentials
    {:bucket => ENV['S3_BUCKET'], :access_key_id => ENV['S3_PUBLIC_KEY'], :secret_access_key => ENV['S3_SECRET']}
  end

end

