class UsersController < ApplicationController
  before_action :find_user

  def show
  end

  def destroy
    @user.soft_delete!
    respond_to do |format|
      format.js { flash[:success] = 'User removed and can no longer access account.' }
      format.html { redirect_to users_path(current_user.organization), notice: 'User removed.' }
      format.json { head :no_content }
    end
  end

  def restore

  end

  private

  def find_user
    @user = User.find(params[:id])
    @organization = Organization.find_by_slug params[:organization_id]
  end

  def user_params
    params.require(:user).permit!
  end
end
