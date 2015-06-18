Rails.application.routes.draw do
  get 'animals/(*path)', to: 'animals#index'
end
