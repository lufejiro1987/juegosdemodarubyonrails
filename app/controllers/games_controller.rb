class GamesController < ApplicationController
  def index
    @games = Game.all
  end

  def show
    @game = Game.find(params[:id])
  end

  def new
    @game = Game.new
  end

  def create
    @game = Game.new(game_params)
    if @game.save
      redirect_to games_path notice: 'juego añadido'
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
    @game = Game.find(params[:id])
    @game.destroy
    redirect_to games_path, notice: 'juego eliminado'
  end

  private
  def game_params
    params.require(:game).permit(:name, :year, :category_id)
  end

end
