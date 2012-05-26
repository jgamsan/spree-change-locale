Spree::BaseController.class_eval do
  
  before_filter :myapp_force_current_user

  def myapp_force_current_user
    unless current_user
      redirect_to new_user_session_url and return
    end
  end 
  
end
