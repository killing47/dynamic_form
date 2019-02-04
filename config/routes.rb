Rails.application.routes.draw do

  root 'homes#top'
  get  'homes/top', to: 'homes#top', as:"homes"
  resources :posts, only:[:create, :update, :destroy]

end
