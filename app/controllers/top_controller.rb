class TopController < ApplicationController
    
    def main
        render 'login'
    end
    
    def login
        user = User.find_by(userid: params[:userid])
        if user and BCrypt::Password.new(user.password) == params[:password]
          session[:login_userid] = user.userid
          redirect_to root_path
        else
          render 'login'
        end
    end
    
    def logout
    session.delete(:login_userid)
    redirect_to root_path
    end
    
end
