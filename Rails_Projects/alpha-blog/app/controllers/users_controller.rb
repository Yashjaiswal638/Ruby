class UsersController < ApplicationController

    def new
        @user = User.new
    end


    def create
        # render plain: params[:article]
        @user = User.new(params.require(:user).permit(:username, :email, :password))
        # render plain: @article.inspect
        if @user.save
        # redirect_to article_path(@article)
            flash[:notice] = "User Sign up successfull."
            redirect_to @user
        else
            render 'new'
        end
    end

end