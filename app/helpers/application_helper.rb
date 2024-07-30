module ApplicationHelper
  def login_helper
    if current_user.is_a?(User)
       button_to "Logout", destroy_user_session_path, method: :delete
    else
      (button_to "Register", new_user_registration_path, method: :get) +
      (button_to "Login", new_user_session_path)
    end
  end
end
