class HomeController < ApplicationController
	def index
	  @blogposts = Blogpost.all
	end

	def new
	  @blogpost = Blogpost.new
	end

	def create
	  @blogpost = Blogpost.new(blogpost_params)
	  if @blogpost.save
	  redirect_to '/home/index'
	  else 
	  render 'home/new'
	end
end
