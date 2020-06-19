class CharactersController < ApplicationController
    def index
        characters = Character.all
        render json: characters, only: [:id, :name, :img_url]
    end

    def show
        character = Character.find_by(id: params[:id])
        if character 
            render json: character.slice(:id, :name, :img_url)
        else 
            render json: {message: "Character not Found!"}
        end
    end
end
