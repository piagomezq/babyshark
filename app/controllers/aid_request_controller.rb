class AidRequestController < ApplicationController
    skip_before_action :verify_authenticity_token
    def index
        @aid_requests = AidRequest.all
    end

    def create
        @patient = Patient.create(
            first_name: params[:patient][:first_name], 
            last_name: params[:patient][:last_name], 
            rut: params[:patient][:rut],
            address: params[:patient][:address],
            phone: params[:patient][:phone])
        @aid_request = AidRequest.create(description: params[:description], specialty_id: params[:specialty_id], patient_id: @patient.id)
        render json: {description: params[:description], specialty_id: params[:specialty_id], patient: params[:patient]}
    end
end