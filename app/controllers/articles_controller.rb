class ArticlesController < ApplicationController
  before_action :fetch_article, only: %i[show edit update destroy]

  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    return redirect_to @article if @article.save

    render :new
  end

  def show; end

  def edit; end

  def update
    return redirect_to @article if @article.update(article_params)

    render :edit
  end

  def destroy
    @article.destroy
  end

  private

  def article_params
    params.require(:article).permit(:title, :description)
  end

  def fetch_article
    @article = Article.find(params[:id])
  end
end
