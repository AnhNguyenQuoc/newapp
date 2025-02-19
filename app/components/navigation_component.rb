# frozen_string_literal: true

class NavigationComponent < ViewComponent::Base
  erb_template <<-ERB
    <div id="navigation" class="fixed">
      <ul>
        <% if @current_user.present? %>
          <% @navigation.each do |nav| %>
            <%= render_navigation_item(nav[:name], nav[:path]) %>
          <% end %>
          <li>
            <%= link_to "Sign out", destroy_user_session_path, data: { turbo_method: :delete } %>
          </li>
        <% else %>
          <%= render_navigation_item("Home", root_path) %>
          <%= render_navigation_item("Sign in", new_user_session_path) %>
          <%= render_navigation_item("Sign up", new_user_registration_path) %>
        <% end %>
      </ul>
    </div>
  ERB

  def initialize(navigations, current_user, path)
    @navigation = navigations
    @current_user = current_user
    @path = path
  end

  private

  def render_navigation_item(name, path)
    content_tag :li, class: (@path == path ? "active" : "") do
      link_to name, path
    end
  end
end
