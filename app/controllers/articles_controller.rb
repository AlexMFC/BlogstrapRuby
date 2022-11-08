class ArticlesController < ApplicationController
  def index
    @articles = Article.all # com arroba fica publica
  end

  def show
    @article = Article.find(params[:id])
  end
end
