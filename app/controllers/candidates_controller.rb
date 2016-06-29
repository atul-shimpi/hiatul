class CandidatesController < ApplicationController
  before_action :set_candidate, only: [:show, :edit, :update, :destroy]
  def index   
    @candidates = candidates
  end

  def show
  end

  def new
    @candidate = User.new
    @candidate.role_id = 3
  end

  def users
    @users = end_users
  end

  def edit
  end

  def create
    @candidate = User.new(candidate_params)
    @candidate.password = Devise.friendly_token
    @candidate.role_id = 3


    respond_to do |format|
      if @candidate.save
        mobile_number = contact_params[:contacts][:value]
        Contact.create(user_id: @candidate.id, contact_type: 'mobile', value: mobile_number) if mobile_number.present?
        CandidateMailer.on_board_completion(@candidate).deliver
        format.html { redirect_to root_path, notice: 'User was successfully created.' }
        format.json { render :show, status: :created, location: @candidate }
      else
        format.html { render :new }
        format.json { render json: @candidate.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
  end

  def destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_candidate
      @candidate = Candidate.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def candidate_params
      params.require(:user).permit(:first_name, :middle_name, :last_name, :email)
    end

  def contact_params
    params.require(:user).permit(:contacts => :value)
  end
end
