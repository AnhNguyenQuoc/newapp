# frozen_string_literal: true

class NavigationComponent < ViewComponent::Base
  erb_template <<-ERB
    <div id="navigation">
      <ul>
        <% if @current_user.present? %>
          <% @navigation.each do |nav| %>
            <li class="<%= @path == nav[:path] ? 'active' : '' %>">
              <a href="<%= nav[:path] %>">
                <%= nav[:name] %>
              </a>
            </li>
          <% end %>
          <li>
            <%= link_to "Sign out", destroy_user_session_path, data: { turbo_method: :delete } %>
          </li>
        <% else %>
          <li>
            <%= link_to "Home", root_path %>
          </li>
          <li>
            <%= link_to "Sign in", new_user_session_path %>
          </li>
          <li>
            <%= link_to "Sign up", new_user_registration_path %>
          </li>
        <% end %>
      </ul>
    </div>
  ERB

  def initialize(navigations, current_user, path)
    @navigation = navigations
    @current_user = current_user
    @path = path
  end
end
