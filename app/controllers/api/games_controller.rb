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

  def number
    # get user input from params
    p params[:guess].class
    # see if that number is higher or lower than the "answer"

    if params[:guess].to_i > 36
      @message = "you guessed too high"
    elsif params[:guess].to_i < 36
      @message = "you guessed too low"
    else
      @message = "you guessed correctly"
    end
    
    render 'the_number.json.jb'
  end
end
