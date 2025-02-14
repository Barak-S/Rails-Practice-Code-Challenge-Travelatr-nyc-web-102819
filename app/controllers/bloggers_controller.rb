class BloggersController < ApplicationController
    def new
        @blogger = Blogger.new
    end

    def create
        blogger = Blogger.create(blogger_params)
        redirect_to blogger_path(blogger)
    end

    def show
        @blogger = Blogger.find(params[:id])
        @blogger_posts = @blogger.posts
    end


    private

    def blogger_params
        params.require(:blogger).permit(:name, :bio, :age)
    end

end