Rails.application.routes.draw do
  root to: "questions#index"

  resources :questions do
    resources :answers
  end

  resources :answers do
    resources :votes
  end

end
