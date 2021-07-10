Rails.application.routes.draw do
  namespace :api do
    resources :job_seekers, only: %w[index create show]
    resources :job_seeker_basic_informations, only: %w[create show destroy]
  end
end
