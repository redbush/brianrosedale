class Post < ActiveRecord::Base

  default_scope {
    order('created_at DESC')
  }

  validates_presence_of :title, :summary, :content

end
