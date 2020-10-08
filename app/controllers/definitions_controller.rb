class DefinitionsController < ApplicationController

    def index
      definitions = Definition.all
      render json: DefinitionSerializer.new(definitions).to_serialized_json
      end

    def show
      definition = Definition.find_by(id: params[:id])
      render json: DefinitionSerializer.new(definition).to_serialized_json
    end

    def create
         definition = Definition.create(definition_params)
          if definition.valid?
            render json: DefinitionSerializer.new(definition).to_serialized_json
         else
             render json: { errors: definition.errors.full_messages }, status: :unprocessable_entity
        end
    end

    def destroy
      definition = Definition.find_by(id: params[:id])
      definition.destroy
      render json: { message: "definition deleted"}, status: :no_content
    end

  private

  def definition_params
    params.permit(:meaning, :example, :user_id, :word_id)
  end

end
