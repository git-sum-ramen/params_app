class Api::GamesController < ApplicationController
  def tell_name
    render 'name.json.jb'
  end
end
