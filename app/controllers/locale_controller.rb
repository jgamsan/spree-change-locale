class LocaleController < Spree::BaseController
  layout 'initial'
  def set
    session[:locale] = I18n.locale = params[:locale].to_sym if params[:locale] && I18n.available_locales.include?(params[:locale].to_sym)
  end
  
end
