class AddBlogToArticles < ActiveRecord::Migration[5.0]
  def change
    add_reference :articles, :blogs, foreign_key: true
  end
end
