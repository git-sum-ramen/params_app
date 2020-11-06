class Api::ExamplePagesController < ApplicationController
  def query
    p "here is the params hash"
    @occupation = params["occupation"].length
    if @occupation > 12
      @message = "you have a fancy sounding job"
    else
      @message = "you have a regular sounding job"
    end
    render 'query.json.jb'
  end
end
