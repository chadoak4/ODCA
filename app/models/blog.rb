class Blog < ActiveRecord::Base
  has_one :user
  attachment :blog_image

end
