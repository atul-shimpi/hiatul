class PersonalDetailsController < ApplicationController
  before_action :set_personal_detail, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @personal_details = PersonalDetail.all
    respond_with(@personal_details)
  end

  def show
    respond_with(@personal_detail)
  end

  def new
    @user = User.new
    respond_with(@user)
  end

  def edit
  end

  def create
    @personal_detail = PersonalDetail.new(personal_detail_params)
    @personal_detail.save
    respond_with(@personal_detail)
  end

  def update
    @personal_detail.update(personal_detail_params)
    respond_with(@personal_detail)
  end

  def destroy
    @personal_detail.destroy
    respond_with(@personal_detail)
  end

  private
    def set_personal_detail
      @personal_detail = PersonalDetail.find(params[:id])
    end

    def personal_detail_params
      params[:personal_detail]
    end
end
