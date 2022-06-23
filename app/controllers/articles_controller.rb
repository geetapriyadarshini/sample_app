class ArticlesController < ApplicationController
	def index
    @articles = current_user.articles
	end

	def new 
		@article = Article.new
	end

	def create

		@article = Article.new(article_params)
		@article.user_id = current_user.id

    if @article.save
      redirect_to @article
    else
      render :new, status: :unprocessable_entity
    end
		
	end
	
	def show
		@article = Article.find(params[:id])
	end

	private
    def article_params
      params.require(:article).permit(:title, :body)
    end

end
