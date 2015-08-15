class User < ActiveRecord::Base
  has_many :projects, dependent: :destroy
  has_secure_password

end
