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

  def segment
    @vehicle = params[:vehicle] 
    @sentence = "You drive a #{@vehicle}"   
    render 'segment.json.jb'
  end

  def body
    if params[:ssn].length == 9
      @message = "you typed it in correctly"
    else
      @message = "give me the real ssn"
    end
    render 'body.json.jb'
  end
end
