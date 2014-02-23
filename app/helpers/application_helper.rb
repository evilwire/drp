module ApplicationHelper
  def redirect_to_signin(return_to = {from: root_url})
    session[:return_to] = return_to[:from]
    redirect_to '/signin'
  end

  def return_from_signin
    if session[:return_to]
      redirect_to session.delete(:return_to)
    else
      redirect_to root_path
    end
  end
end
