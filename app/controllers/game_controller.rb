class GameController < ApplicationController
  def index
  	create
  end

  def show
  	@game = Game.find(params[:id])
  end

	def create
	  @game = Game.new({title:"NFC Championship"})
	  @game.save
	  redirect_to @game
	end

end
