class Api::ExamplePagesController < ApplicationController
  def query
    p "here is the params hash"
    p params["name"]
    render 'query.json.jb'
  end
end
