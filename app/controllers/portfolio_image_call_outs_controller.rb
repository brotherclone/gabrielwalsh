class PortfolioImageCallOutsController < ApplicationController
  before_action :set_portfolio_image_call_out, only: [:show, :edit, :update, :destroy]

  # GET /portfolio_image_call_outs
  # GET /portfolio_image_call_outs.json
  def index
    @portfolio_image_call_outs = PortfolioImageCallOut.all
  end

  # GET /portfolio_image_call_outs/1
  # GET /portfolio_image_call_outs/1.json
  def show
  end

  # GET /portfolio_image_call_outs/new
  def new
    @portfolio_image_call_out = PortfolioImageCallOut.new
  end

  # GET /portfolio_image_call_outs/1/edit
  def edit
  end

  # POST /portfolio_image_call_outs
  # POST /portfolio_image_call_outs.json
  def create
    @portfolio_image_call_out = PortfolioImageCallOut.new(portfolio_image_call_out_params)

    respond_to do |format|
      if @portfolio_image_call_out.save
        format.html { redirect_to @portfolio_image_call_out, notice: 'Portfolio image call out was successfully created.' }
        format.json { render :show, status: :created, location: @portfolio_image_call_out }
      else
        format.html { render :new }
        format.json { render json: @portfolio_image_call_out.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /portfolio_image_call_outs/1
  # PATCH/PUT /portfolio_image_call_outs/1.json
  def update
    respond_to do |format|
      if @portfolio_image_call_out.update(portfolio_image_call_out_params)
        format.html { redirect_to @portfolio_image_call_out, notice: 'Portfolio image call out was successfully updated.' }
        format.json { render :show, status: :ok, location: @portfolio_image_call_out }
      else
        format.html { render :edit }
        format.json { render json: @portfolio_image_call_out.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /portfolio_image_call_outs/1
  # DELETE /portfolio_image_call_outs/1.json
  def destroy
    @portfolio_image_call_out.destroy
    respond_to do |format|
      format.html { redirect_to portfolio_image_call_outs_url, notice: 'Portfolio image call out was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_portfolio_image_call_out
      @portfolio_image_call_out = PortfolioImageCallOut.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def portfolio_image_call_out_params
      params.require(:portfolio_image_call_out).permit(:x, :y, :title, :caption, :portfolio_image_id)
    end
end
