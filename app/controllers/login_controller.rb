class LoginController < ApplicationController

    def create
     user = User.find_by('lower(name) = ?', params[:name].downcase)
     if user && user.authenticate(params[:password])
         render json: { token: token(user.id), user_id: user.id }
     else
         render json: { errors: [ 'Either the username or the password is incorrect']}  
     end
 end

end
