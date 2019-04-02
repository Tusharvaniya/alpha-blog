class ArticlesController < ApplicationController

  before_action :set_article, only: [:edit,:update,:destroy,:show]
  def index
    @articles = Article.all
  end

  def new
    @article = Article.new()
  end
  def create
    #render plain: params[:article].inspect #simply display karva mate

=begin
    @article = Article.new(article_params)
    @article.save
    redirect_to articles_show(@article)
=end

    @article = Article.new(article_params)
    if @article.save
      flash[:success] = 'Article was successfully created'
      redirect_to article_path(@article)
    else
      render 'new' # OR we can also do render :new
    end
  end

  def show
  end

  def destroy

    @article.destroy
    flash[:danger] = 'Article was successfully Deleted'
    redirect_to articles_path
  end

  def edit
  end

  def update


    if @article.update(article_params)
      flash[:success] = 'Article was Updated'
      redirect_to article_path(@article)
    else
      render 'edit'
    end
  end

  private
  def set_article
    @article = Article.find(params[:id])
  end
  def article_params
    params.require(:article).permit(:title, :description)
  end
end