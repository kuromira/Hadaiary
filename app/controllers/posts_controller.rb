class PostsController < ApplicationController

    before_action :authenticate_user!, only: [:new, :create]

    def index
        @posts = params[:tag_id].present? ? Tag.find(params[:tag_id]).posts : Post.all
        if params[:tag_id].present?
            @posts = Post.joins(:tags).where(tags: { id: params[:tag_id] })
        else
            @posts = Post.all
        end
    end

    def new
        @post = Post.new
      end
    
    def create
        post = Post.new(post_params)
        post.user_id = current_user.id
        if post.save
          redirect_to :action => "index"
        else
          redirect_to :action => "new"
        end
    end

    def show
        @post = Post.find(params[:id])
        session[:previous_url]=request.referer
    end
    
    def edit
        @post = Post.find(params[:id])
    end

    def update
        post = Post.find(params[:id])
        if post.update(post_params)
          redirect_to :action => "show", :id => post.id
        else
          redirect_to :action => "new"
        end
    end

    def destroy
        post = Post.find(params[:id])
        post.destroy
        redirect_to action: :index
      end

      private
      def post_params
        params.require(:post).permit(:day, :weather, :condition, :sleep_time, :skin_care, :food, :happy_event, :sad_event, tag_ids: [])
      end

end
