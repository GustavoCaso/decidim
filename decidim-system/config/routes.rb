# frozen_string_literal: true
Decidim::System::Engine.routes.draw do
  devise_for :admins,
             class_name: "Decidim::System::Admin",
             module: :'decidim/system/devise',
             router_name: "decidim_system"

  authenticate(:admin) do
    resources :organizations
    resources :admins
    root to: "dashboard#show"
  end
end