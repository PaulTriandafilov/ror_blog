class ArticlesController < ApplicationController

  #http_basic_authenticate_with name: "dhh", password: "secret", except: [:index, :show]

  def index
    @articles = Article.all.select { |article| article.blog_id.present? }
    @unassigned_articles = Article.all.where(blog_id: nil)
  end

  def show
    @blog = Blog.find(params[:blog_id])
    @article = Article.find(params[:id])
  end

  def new
    @blog = Blog.find(params[:blog_id])
    @article = @blog.articles.new
  end

  def edit
    @blog = Blog.find(params[:blog_id])
    @article = Article.find(params[:id])
  end

  def create
    @blog = Blog.find(params[:blog_id])
    @article = @blog.articles.new(article_params)

    if @article.save
      redirect_to @blog
    else
      render 'new'
    end
  end

  def update
    @article = Article.find(params[:id])

    if @article.update(article_params)
      redirect_to @article
    else
      render 'edit'
    end
  end

  def destroy
    @blog = Blog.find(params[:blog_id])
    @article = Article.find(params[:id])
    @article.destroy

    redirect_to blog_path(@blog)
  end

  private
  def article_params
    params.require(:article).permit(:title, :text)
  end

end
