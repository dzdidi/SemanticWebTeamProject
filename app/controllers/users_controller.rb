class UsersController < ApplicationController
  def create
    @user = User.new(params[:user])
    if @user.save
      redirect_to root_url, :notice => "Successfully created user."
    else
      render :action => 'new'
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to root_url, :notice => "Successfully destroyed user."
  end
end
