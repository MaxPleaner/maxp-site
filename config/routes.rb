Rails.application.routes.draw do
  root 'pages#index'
  get 'animation', to: "pages#animation"
  get 'resume', to: "pages#resume"
  get 'portfolio', to: "pages#portfolio"
end
