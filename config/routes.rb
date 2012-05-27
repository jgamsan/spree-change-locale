Spree::Core::Engine.routes.draw do
  # Add your extension routes here
  match 'locale/:locale' => 'locale#set', :constraints => {:locale => /\b#{I18n.enabled_locales.join('|')}\b/}, :as => :change_locale
  match 'settings/:id/get_country_settings' => 'settings#get_country_settings', :as => :get_country_settings
end
