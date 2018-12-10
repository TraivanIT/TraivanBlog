class Post < ApplicationRecord
  belongs_to :traivan
  has_many :post_tags, dependent: :destroy
  has_many :tags , through: :post_tags , dependent: :destroy
  validates :title, :content, presence: true

  mount_uploader :blog_image, BlogUploader


  def self.search_post(post)
    where("title LIKE ? OR content LIKE ?", "%#{post}%", "%#{post}%" )
  end
  
end
