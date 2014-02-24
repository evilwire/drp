class SessionsController < ApplicationController
  helper :all

  def new
  end

  def create
    email = params[:session][:email]
    @user = Users.find_by email: email
    if @user && (@user.authenticate params[:session][:password] )
        sign_in @user
        #flash[:success] = "Flashing some stuff"
        return_from_signin
    else
      flash[:error] = "Unable to authenticate"
      render "new"
    end
  end

  def destroy
    sign_out
    redirect_to root_path
  end
end
