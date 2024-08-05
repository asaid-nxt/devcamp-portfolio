class Blog < ApplicationRecord
  enum status: { draft: 0, published: 1 }
  extend FriendlyId
  friendly_id :title, use: :slugged

  validates_presence_of :title, :body
  belongs_to :topic, optional: true
end
@main_feature_post = Blog.find(14)
@second_feature_post = Blog.find(13)
@third_feature_post = Blog.find(12)
