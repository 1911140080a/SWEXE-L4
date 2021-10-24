class ApplicationController < ActionController::Base
    
    private
    def current_user
     if session[:login_userid]
        User.find_by(userid: session[:login_userid])
     end
    end
    
end
