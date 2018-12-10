class Admin::UsersController < ApplicationController
  layout "admin"

  def index
    @user = User.all
  end

  def edit

  end

  def update
  end

  def destroy
  end

  private

  def find_user
    @user = User.find params[:id]
  end
end
