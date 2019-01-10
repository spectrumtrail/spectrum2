class RegistrationsController < BaseController
  layout "application"

  def index
    @registrations = current_user.registrations
  end

  def show
    @registration = current_user.registrations.find(params[:id])
    @race = @registration.race
  end
end
