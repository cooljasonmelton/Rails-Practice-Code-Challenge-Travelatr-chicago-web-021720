class PostsController < ApplicationController

    def new
        @post = Post.new
    end 

    def create
    end 

    def edit
    end 

    def update
    end 

    def show
    end 

    private
    # I'd call this post_params instead, once you get to it
    def get_params
    end 

    def find_post
        @post = Post.find(params[:id])
    end 

end 