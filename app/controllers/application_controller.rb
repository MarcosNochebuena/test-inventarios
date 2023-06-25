class ApplicationController < ActionController::Base
    before_action :authenticate_user!

    rescue_from CanCan::AccessDenied do |exception|
        respond_to do |format|
          format.html { render file: "#{Rails.root}/public/403.html", layout: false, status: :forbidden }
        end
      end
      
end
