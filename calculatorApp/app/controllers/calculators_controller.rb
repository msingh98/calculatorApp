class CalculatorsController < ApplicationController
  before_action :set_calculator, only: [:show, :edit, :update, :destroy]
  skip_before_action :verify_authenticity_token

  # GET /calculators
  # GET /calculators.json
  def index
    @calculations = Calculator.last(10).reverse #set history bound to 10
    @calculation = Calculator.new
  end

  # GET /calculators/1
  # GET /calculators/1.json
  def show
    @calculator = Calculators.find(params)
  end

  # GET /calculators/new
  def new
    @calculator = Calculator.new
  end

  # GET /calculators/1/edit
  def edit
  end

  # POST /calculators
  # POST /calculators.json
  def create
    @calculator = current_user.calculators.new(calculator_params)

    respond_to do |format|
      if @calculator.save
        format.html { redirect_to calculators_path }
        format.json { render :show, status: :created, location: @calculator }
        format.js
      else
        format.html { render :new }
        format.json { render json: @calculator.errors, status: :unprocessable_entity }
        format.js
      end
    end
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_calculator
      @calculator = Calculator.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def calculator_params
      params.permit(:content)
    end
end
