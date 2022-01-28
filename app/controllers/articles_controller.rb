class ArticlesController < ApplicationController
  def index
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    @article.user_id = current_user.id
    @article.save
    # @article.create
    # @article = Article.create(article_params)
    redirect_to @article
  end
  
  def edit
  end

  private
  def article_params
    params.require(:article).permit(:title, :body, :image)
  end
  
end
