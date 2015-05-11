Rails.application.routes.draw do
  root 'pages#index'
  get 'animation', to: "pages#animation"
end
