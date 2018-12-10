class AddBlogImageToBlogs < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :blog_image, :text
  end
end
