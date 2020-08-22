class DefinitionSerializer

    def initialize(definition_object)
        @definition = definition_object
    end

    def to_serialized_json
        @definition.to_json(:include => {
            :user => {:only => [:name]},
            :word => {:only => [:spelling]}
        },
            :except => [:updated_at])
    end

end