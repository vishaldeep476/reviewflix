module ApplicationHelper
  def current_user
    @current_user ||=  User.find(session[:user_id]) if session[:user_id]
  end

  def nav_link_to(text, url)
    if current_page?(url)
      link_to(text, url, class: "active")
    else
      link_to(text, url)
    end
  end
end
