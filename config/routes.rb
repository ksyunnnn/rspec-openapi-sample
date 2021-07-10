Rails.application.routes.draw do
  namespace :api do
    resources :job_seekers, only: %w[index create show]
  end
end
