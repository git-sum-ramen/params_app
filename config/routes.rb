Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "/query_params" => "example_pages#query"
    get "/url_segment_parameter/:vehicle" => "example_pages#segment"

    get "/name" => "games#tell_name"
    get "/guess_a_number" => "games#number"
    get "/guess_segment/:number" => "games#segment_number"
  end
end
