class UsersController < ApplicationController
	#before_filter :login_required
	def index
		
	end

	def signup
		@user = User.new
		 byebug
		if request.post?
			if @user.save

               
				session[:user] = User.authenticate(@user.email, @user.password)
				flash[:message] = "You are Registered Successully"
				redirect_to users
				else
        			flash[:warning] = "Signup unsuccessful"
            end
		end
	end
    def login
	    if request.post?
	      if session[:user] = User.authenticate(params[:user][:email], params[:user][:password])
	        flash[:message]  = "Login successful"
	        redirect_to_stored
	         else
	        flash[:warning] = "Login unsuccessful"
	      end
    end
  end
	private
	def user_params
		params.require[:user].permit(:first_name, :last_name, :email, :password, :confirm_password)
	end
    
end
