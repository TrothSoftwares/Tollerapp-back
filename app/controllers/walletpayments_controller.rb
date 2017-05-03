class WalletpaymentsController < ApplicationController
  before_action :set_walletpayment, only: [:show, :update, :destroy]

  # GET /walletpayments
  def index
    @walletpayments = Walletpayment.all

    render json: @walletpayments
  end

  # GET /walletpayments/1
  def show
    render json: @walletpayment
  end

  # POST /walletpayments
  def create
    @walletpayment = Walletpayment.new(walletpayment_params)

    if @walletpayment.save
      render json: @walletpayment, status: :created, location: @walletpayment
    else
      render json: @walletpayment.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /walletpayments/1
  def update
    if @walletpayment.update(walletpayment_params)
      render json: @walletpayment
    else
      render json: @walletpayment.errors, status: :unprocessable_entity
    end
  end

  # DELETE /walletpayments/1
  def destroy
    @walletpayment.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_walletpayment
      @walletpayment = Walletpayment.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def walletpayment_params
      params.fetch(:walletpayment, {})
    end
end
