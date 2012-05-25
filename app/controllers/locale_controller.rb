class LocaleController < Spree::BaseController
  layout 'initial'
  def set
    session[:locale] = I18n.locale = params[:locale].to_sym if params[:locale] && I18n.available_locales.include?(params[:locale].to_sym)
    redirect_to products_path
  end
  
  protected
  def set_locale
    session[:locale] = I18n.locale = (request.preferred_language_from(I18n.enabled_locales) || request.compatible_language_from(I18n.enabled_locales) || I18n.default_locale).to_sym
  end
end
