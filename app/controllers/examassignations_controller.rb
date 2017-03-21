class ExamassignationsController < ApplicationController
  before_action :set_examassignation, only: [:show, :update, :destroy]

  # GET /examassignations
  def index
    @examassignations = Examassignation.all

    render json: @examassignations
  end

  # GET /examassignations/1
  def show
    render json: @examassignation
  end

  # POST /examassignations
  def create
    @examassignation = Examassignation.new(examassignation_params)

    if @examassignation.save
      render json: @examassignation, status: :created, location: @examassignation
    else
      render json: @examassignation.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /examassignations/1
  def update
    if @examassignation.update(examassignation_params)
      render json: @examassignation
    else
      render json: @examassignation.errors, status: :unprocessable_entity
    end
  end

  # DELETE /examassignations/1
  def destroy
    @examassignation.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_examassignation
      @examassignation = Examassignation.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def examassignation_params
      params.fetch(:examassignation, {})
    end
end
