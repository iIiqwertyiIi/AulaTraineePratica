require 'rails_helper'

RSpec.describe "Api::V1::Games", type: :request do
  describe "GET /show" do
    let(:game) { create(:game) }

    context 'when game exists' do
      before { get "/api/v1/games/show/#{game.id}" }

      it 'returns an ok status' do
        expect(response).to have_http_status(:ok)
      end

      it 'responds with a json' do
        expect(response.content_type).to eq('application/json; charset=utf-8')
      end

    end

    context 'when game does not exists' do

      before do
        game.destroy
        get "/api/v1/games/show/#{game.id}"
      end

      it 'returns a not found response' do
        expect(response).to have_http_status(:not_found)
      end
    end
  end

  describe 'POST /create' do
    let(:game_params) do
      {
        title: "Jogo do rspec",
        genre: "Terror",
        platform: "Windows",
        release: "20-02-1990"
      }
    end

    context 'with valid params' do
      before { post '/api/v1/games/create', params: { game: game_params } }

      it 'returns a successful response' do
        expect(response).to have_http_status(:created)
      end

      it 'creates the game' do
        new_game = Game.find_by(title: game_params[:title])
        expect(new_game).not_to be_nil
      end
    end

    context 'with invalid params' do
      before do
        game_params[:title] = nil
        post '/api/v1/games/create', params: { game: game_params }
      end

      it 'returns a bad request response' do
        expect(response).to have_http_status(:unprocessable_entity)
      end

      it 'does not create the game' do
        new_game = Game.find_by(title: game_params[:title])
        expect(new_game).to be_nil
      end
    end
  end
end
