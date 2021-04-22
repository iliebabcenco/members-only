class PostsController < ApplicationController
    before_action :authenticate_member!, except: %i[index]

    def index
        @posts = Post.all
    end

    def new
        @post = Post.new
    end

    def create
        @post = current_member.posts.build(post_params)
        if @post.save
            redirect_to root_path
        else
            render :new
        end
    end

    private

    def post_params
        params.require(:post).permit([:title, :body])
    end

end
