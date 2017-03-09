# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

blogs = Blog.create([{ name: 'Blog 1' }, {name: 'Blog 2'}])

blogs.each do |blog|
  articles = Article.create([ {title: "Article for #{blog.name} #1", text: "Text for Article for blog #{blog.name}", blog: blog}, 
                              {title: "Article for #{blog.name} #2", text: "Text for Article for blog #{blog.name}", blog: blog} 
                            ])
end

Article.new(title: 'Unassigned article 1', text: 'Some text').save(validate: false)
Article.new(title: 'Unassigned article 2', text: 'Some text').save(validate: false)