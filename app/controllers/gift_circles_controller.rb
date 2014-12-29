class GiftCirclesController < ApplicationController
  before_action :set_gift_circle, only: [:show, :edit, :update, :destroy]

  # GET /gift_circles
  # GET /gift_circles.json
  def index
    @gift_circles = GiftCircle.all
  end

  # GET /gift_circles/1
  # GET /gift_circles/1.json
  def show
  end

  # GET /gift_circles/new
  def new
    @gift_circle = GiftCircle.new
  end

  # GET /gift_circles/1/edit
  def edit
  end

  # POST /gift_circles
  # POST /gift_circles.json
  def create
    @gift_circle = GiftCircle.new(gift_circle_params)

    respond_to do |format|
      if @gift_circle.save
        format.html { redirect_to @gift_circle, notice: 'Gift circle was successfully created.' }
        format.json { render :show, status: :created, location: @gift_circle }
      else
        format.html { render :new }
        format.json { render json: @gift_circle.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gift_circles/1
  # PATCH/PUT /gift_circles/1.json
  def update
    respond_to do |format|
      if @gift_circle.update(gift_circle_params)
        format.html { redirect_to @gift_circle, notice: 'Gift circle was successfully updated.' }
        format.json { render :show, status: :ok, location: @gift_circle }
      else
        format.html { render :edit }
        format.json { render json: @gift_circle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gift_circles/1
  # DELETE /gift_circles/1.json
  def destroy
    @gift_circle.destroy
    respond_to do |format|
      format.html { redirect_to gift_circles_url, notice: 'Gift circle was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gift_circle
      @gift_circle = GiftCircle.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def gift_circle_params
      params.require(:gift_circle).permit(:name, :occasion, :about, :theme, :giving_date, :reveal_date, :min_giftprice, :max_giftprice, :annon_admin?, :active?, :person_id)
    end
end
