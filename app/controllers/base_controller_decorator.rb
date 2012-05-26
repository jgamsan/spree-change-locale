Spree::BaseController.class_eval do
  
  before_filter :set_settings, :if => proc { !session[:locale] }

  def set_settings
    if session[:locale].nil?
      redirect_to :controller => "locale", :action => "set"
    end
  end 
  
end
