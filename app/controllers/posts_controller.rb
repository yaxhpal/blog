class PostsController < ApplicationController

	def index
		@posts = Post.all
	end 

	def show
		@post = Post.find(params[:id])
	end

	def new
	
	end
	
	def create
		#require 'pry'; binding.pry 
		@post = Post.new(post_params)
 		@post.save
  		redirect_to @post
	end

private
  	def post_params
    	params.require(:post).permit(:title, :body, :author_id)
  	end
end
