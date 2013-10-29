class PostsController < ApplicationController
def index
 @posts = Post.all
end
  def new
          @post = Post.new
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
      #def show
       # @post = Post.find(params[:id])
      #end
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

   #action for emails
  def contact_us
  end

  #sending emails with attahcments
  def hello

     @name = params[:name]
     @email = params[:email]
     @body = params[:body]
     @file = params[:file]
     @subject = params[:subject]


     #Record.create(avatar:params[:file])
     #@record.save!
     #@path = "#{@record.avatar.url}".to_s   #change here
     #@index = @path.index('?')
     #for i in @index..@path.length-1
      # @path[i] = ' '
     #end
     #@path.strip!
     UserMailer.registration_confirmation(@email,@body,@subject).deliver
     #@message = "Email Sent ......"
     #@record.destroy!

  end



end
