Deface::Override.new(:virtual_path => %q{spree/shared/_nav_bar},
                     :name => %q{add_to_sidebar},
                     :replace => %q{li#search-bar},
                     :text => %q{<li id="search-bar" data-hook>
  <%= render 'shared/locale_bar' %>                   
  <%= render :partial => 'spree/shared/search' %>
</li>})
