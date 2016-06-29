class OnBoardInfoController < ApplicationController
  before_action :set_on_board_info, only: [:show, :edit, :update, :destroy]

  # GET /on_board_infos
  # GET /on_board_infos.json
  def index
    @user = User.find(params[:id])
  end

  # GET /on_board_infos/1
  # GET /on_board_infos/1.json
  def show
  end

  # GET /on_board_infos/new
  def new
    @on_board_info = OnBoardInfo.new
  end

  # GET /on_board_infos/1/edit
  def edit
  end

  # POST /on_board_infos
  # POST /on_board_infos.json
  def create
    @on_board_info = OnBoardInfo.new(on_board_info_params)

    respond_to do |format|
      if @on_board_info.save
        format.html { redirect_to @on_board_info, notice: 'On board info was successfully created.' }
        format.json { render :show, status: :created, location: @on_board_info }
      else
        format.html { render :new }
        format.json { render json: @on_board_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /on_board_infos/1
  # PATCH/PUT /on_board_infos/1.json
  def update
    respond_to do |format|
      if @on_board_info.update(on_board_info_params)
        format.html { redirect_to @on_board_info, notice: 'On board info was successfully updated.' }
        format.json { render :show, status: :ok, location: @on_board_info }
      else
        format.html { render :edit }
        format.json { render json: @on_board_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /on_board_infos/1
  # DELETE /on_board_infos/1.json
  def destroy
    @on_board_info.destroy
    respond_to do |format|
      format.html { redirect_to on_board_infos_url, notice: 'On board info was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_on_board_info
      @on_board_info = OnBoardInfo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def on_board_info_params
      params[:on_board_info]
    end
end
