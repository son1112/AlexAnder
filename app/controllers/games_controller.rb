class GamesController < ApplicationController

  def index
    @games = Game.all
  end

  def new
    #@game = log.games.build
    @game = Game.new
  end

  def create
    #@game = Game.new(game_params)
    @game = log.games.build(game_params)

    if @game.save
      flash[:success] = "Game saved!"
      redirect_to games_path
    else
      render 'new'
    end
  end

  private

  def game_params
    params.require(:game).permit(:gamefile, :title, :info, :log_id)
  end
end
