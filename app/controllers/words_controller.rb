class WordsController < ApplicationController

    def index
            words = Word.all
            render json: words
    end

    def show
        word = Word.find_by(id: params[:id])
        render json: word
    end
    
    def create
        word = Word.create(word_params)
        if word.valid?
            render json: word
        else
            render json: { errors: word.errors.full_messages }, status: :unprocessable_entity
        end
    end

private

    def word_params
        params.permit(:spelling)
    end

end
