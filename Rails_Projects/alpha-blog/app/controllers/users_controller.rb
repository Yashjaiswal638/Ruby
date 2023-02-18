class UsersController < ApplicationController

    def new
        @user = User.new
    end


    def edit
        @user = User.find(params[:id])
    end


    def create
        # render plain: params[:article]
        @user = User.new(user_params)
        # render plain: @article.inspect
        if @user.save
        # redirect_to article_path(@article)
            flash[:notice] = "User Sign up successfull, Welcome #{@user.username}."
            redirect_to articles_path
        else
            render 'new', status: :unprocessable_entity
        end
    end


    def update
        @user = User.find(params[:id])
        if @user.update(user_params)
          flash[:notice] = "User was updated successfully."
          redirect_to articles_path
        else
          render 'edit', status: :unprocessable_entity
        end
    end

    private


    def user_params
        params.require(:user).permit(:username, :email, :password)
    end


end