class Api::V1::NameIdeasController < ApplicationController
    #GET /url_identificiations/#url_identification_id/name_ideas
    def index
        @url_id = UrlIdentification.find(params[:url_identification_id])
        @name_ideas = @url_id.name_ideas.all
        render json: @name_ideas
    end

    #POST /url_identificiations/#url_identification_id/name_ideas
    def create
        @newName = NameIdea.new(name_params)
        if @newName.save
            render json:@newName
        else
            render error:{error: "bad"}, status:400
        end
    end

    private

    def name_params
        params.require(:name_idea).permit(:name, :url_identification_id)
    end
end
