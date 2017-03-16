class AssignationsController < ApplicationController
  before_action :set_assignation, only: [:show, :update, :destroy]

  # GET /assignations
  def index
    @assignations = Assignation.all

    render json: @assignations
  end

  # GET /assignations/1
  def show
    render json: @assignation
  end

  # POST /assignations
  def create
    @assignation = Assignation.new(assignation_params)

    if @assignation.save
      render json: @assignation, status: :created, location: @assignation
    else
      render json: @assignation.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /assignations/1
  def update
    if @assignation.update(assignation_params)
      render json: @assignation
    else
      render json: @assignation.errors, status: :unprocessable_entity
    end
  end

  # DELETE /assignations/1
  def destroy
    @assignation.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_assignation
      @assignation = Assignation.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def assignation_params
      params.fetch(:assignation, {})
    end
end
