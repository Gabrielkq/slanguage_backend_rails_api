class DefinitionsController < ApplicationController

    def index
      definitions = Definition.all
      render json: DefinitionSerializer.new(definitions).to_serialized_json
      end

    def show
      definition = Definition.find_by(id: params[:id])
      render json: DefinitionSerializer.new(definition).to_serialized_json
    end

end
