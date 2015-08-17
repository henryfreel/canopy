class Project < ActiveRecord::Base
  belongs_to :user
  
  validates :title, :live_url, :github_url,
  	presence: true,
  	length: {maximum: 255}
  validates :description,
  	presence: true
end
