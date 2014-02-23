module ApplicationHelper
  def redirect_to_signin(return_to = {from: root_url})
    session[:return_to] = return_to[:from]
    redirect_to '/signin'
  end

  def return_from_signin
    redirect_to session.delete(:return_to)
  end
end
