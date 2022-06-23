class PostsController < ApplicationController
	def index
		@posts=Article.all
	end
end
