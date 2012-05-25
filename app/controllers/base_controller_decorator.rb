Spree::BaseController.class_eval do
  
  before_filter :set_settings, :if => proc { !session[:locale] }

  def set_settings
    unless session[:locale]
      redirect_to locale_path and return
    end
  end 
  
end
