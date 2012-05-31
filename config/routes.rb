Spree::Core::Engine.routes.draw do
  # Add your extension routes here
  match 'locale/:locale' => 'locale#set', :constraints => {:locale => /\b#{I18n.enabled_locales.join('|')}\b/}, :as => :change_locale
  
end
