class Api::GamesController < ApplicationController
  def tell_name
    @name = params[:name].upcase
    p @name
    if @name[0] == "A"
      @message = "Hey, your name starts with the first letter of the alphabet!"
    else
      @message = ""
    end
    render 'name.json.jb'
  end
end
