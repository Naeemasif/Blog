class PostsController < ApplicationController
def index
 @posts = Post.all
end
  def new

  end
        def create
          #render :text =>  params[:post].inspect
        @post = Post.new(params[:post])
          if @post.save
            redirect_to @post
          else
            render 'new'
          end
        end
            def show
        @post = Post.find(params[:id])
      end
            def edit
          @post = Post.find(params[:id])
        end
      def update
        @post = Post.find(params[:id])
      if @post.update_attributes(params[:post])
          redirect_to @post
        else
          render 'edit'
        end
      end
   def destroy
     @post = Post.find(params[:id])
    if @post.destroy
    redirect_to posts_path
    end

   end
end
