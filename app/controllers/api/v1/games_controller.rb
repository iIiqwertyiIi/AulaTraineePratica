class Api::V1::GamesController < ApplicationController
    def index
        games = Game.all
        render json: games, status: :ok
    end

    def show
        game = Game.find(params[:id])
        render json: game, status: :ok
    rescue StandardError
        head(:not_found)
    end
end
