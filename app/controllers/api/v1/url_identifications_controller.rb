class Api::V1::UrlIdentificationsController < ApplicationController
    #GET /url_identificiations
    def index
        @url_ids = UrlIdentification.all
        render json: @url_ids
    end

    #GET /url_identification/#index
    def show
        @url_id = UrlIdentification.find(params[:id])
        render json: @url_id
    end

    #GET /url_identification/new
    def new
        newId = SecureRandom.alphanumeric(12)
        while UrlIdentification.exists?(identification: newId)
            newId = SecureRandom.alphanumeric(12)
        end
        @identification = UrlIdentification.new(:identification => newId, :created_at => Time.now, :updated_at => Time.now)
        if @identification.save
            render json:@identification
        else
            render error:{error: 'Unable to insert new identification'}, status: 400
        end
    end
end