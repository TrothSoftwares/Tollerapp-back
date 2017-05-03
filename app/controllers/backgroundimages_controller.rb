class BackgroundimagesController < ApplicationController
  before_action :set_backgroundimage, only: [:show, :update, :destroy]

  # GET /backgroundimages
  def index
    @backgroundimages = Backgroundimage.all

    render json: @backgroundimages
  end

  # GET /backgroundimages/1
  def show
    render json: @backgroundimage
  end

  # POST /backgroundimages
  def create
    @backgroundimage = Backgroundimage.new(backgroundimage_params)

    if @backgroundimage.save
      render json: @backgroundimage, status: :created, location: @backgroundimage
    else
      render json: @backgroundimage.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /backgroundimages/1
  def update
    if @backgroundimage.update(backgroundimage_params)
      render json: @backgroundimage
    else
      render json: @backgroundimage.errors, status: :unprocessable_entity
    end
  end

  # DELETE /backgroundimages/1
  def destroy
    @backgroundimage.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_backgroundimage
      @backgroundimage = Backgroundimage.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def backgroundimage_params
      params.fetch(:backgroundimage, {})
    end
end
