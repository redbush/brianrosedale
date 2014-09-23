class Post < ActiveRecord::Base

  extend FriendlyId
  friendly_id :title, use: :history

  default_scope {
    order('created_at DESC')
  }

  validates_presence_of :title, :summary, :content

  def should_generate_new_friendly_id?
    title_changed?
  end

end
