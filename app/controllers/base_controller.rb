# This controller supports the logged-in user experience.
class BaseController < ApplicationController
  before_action :authenticate_user!
end
