Spree::BaseController.class_eval do
  helper LocaleHelper
  before_filter :set_settings, :if => proc { !session[:locale] }

  def set_settings
    if session[:locale].nil?
      render :controller => "locale", :action => "set"
    end
  end 
  
end
