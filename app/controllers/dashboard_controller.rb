class DashboardController < ApplicationController
  def index
    if current_user.user?
      redirect_to vehicles_path
    end
  end
end
