class Post < ActiveRecord::Base
  validates :title, :body, :slug, presence: true
end
