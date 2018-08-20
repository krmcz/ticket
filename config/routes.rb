Rails.application.routes.draw do

  namespace :portal do
    resources :tickets
  end


  root to: "portal/tickets#index"
end
