class AddBlogToArticles < ActiveRecord::Migration[5.0]
  def change
    add_reference :articles, :blog, foreign_key: true
  end
end
