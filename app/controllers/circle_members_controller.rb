class CircleMembersController < ApplicationController
  before_action :set_circle_member, only: [:show, :edit, :update, :destroy]

  # GET /circle_members
  # GET /circle_members.json
  def index
    @circle_members = CircleMember.all
  end

  # GET /circle_members/1
  # GET /circle_members/1.json
  def show
  end

  # GET /circle_members/new
  def new
    @circle_member = CircleMember.new
  end

  # GET /circle_members/1/edit
  def edit
  end

  # POST /circle_members
  # POST /circle_members.json
  def create
    @circle_member = CircleMember.new(circle_member_params)

    respond_to do |format|
      if @circle_member.save
        format.html { redirect_to @circle_member, notice: 'Circle member was successfully created.' }
        format.json { render :show, status: :created, location: @circle_member }
      else
        format.html { render :new }
        format.json { render json: @circle_member.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /circle_members/1
  # PATCH/PUT /circle_members/1.json
  def update
    respond_to do |format|
      if @circle_member.update(circle_member_params)
        format.html { redirect_to @circle_member, notice: 'Circle member was successfully updated.' }
        format.json { render :show, status: :ok, location: @circle_member }
      else
        format.html { render :edit }
        format.json { render json: @circle_member.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /circle_members/1
  # DELETE /circle_members/1.json
  def destroy
    @circle_member.destroy
    respond_to do |format|
      format.html { redirect_to circle_members_url, notice: 'Circle member was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_circle_member
      @circle_member = CircleMember.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def circle_member_params
      params.require(:circle_member).permit(:receiver_id, :giverNickname, :person_id, :personInterests, :giverNotes, :giftGiven?, :thankYou, :giftCircle_id, :gift_id)
    end
end
