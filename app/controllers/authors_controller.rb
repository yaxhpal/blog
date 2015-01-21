class AuthorsController < ApplicationController
	def index
		@authors = Author.all
	end 

	def show
		@author = Author.find(params[:id])
	end

	def new
	
	end
	
	def create
		@author = Author.new(post_params)
 		@author.save
  		redirect_to @author
	end

	def edit
		@author = Author.find(params[:id])
	end

	def update
		@author = Author.update(params[:id], post_params)
 		@author.save
  		redirect_to @author
	end

private
  	def post_params
    	params.require(:author).permit(:name, :email)
  	end
end
