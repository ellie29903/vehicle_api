Rails.application.routes.draw do
  resources :vehicles, only: %i[index show create update destroy]
end
