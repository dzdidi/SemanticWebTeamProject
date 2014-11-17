class UserBookRelationsController < ApplicationController
  def create
    @user_book_relation = UserBookRelation.new(params[:user_book_relation])
    if @user_book_relation.save
      redirect_to root_url, :notice => "Successfully created user book relation."
    else
      render :action => 'new'
    end
  end

  def destroy
    @user_book_relation = UserBookRelation.find(params[:id])
    @user_book_relation.destroy
    redirect_to root_url, :notice => "Successfully destroyed user book relation."
  end
end
