class Post < ActiveRecord::Base

  validates_presence_of :title, :summary, :content

end
