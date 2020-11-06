Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "/query_params" => "example_pages#query"

    get "/name" => "games#tell_name"
    get "/guess_a_number" => "games#number"
  end
end
