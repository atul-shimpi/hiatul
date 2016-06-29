class ApplicationController < ActionController::Base
  include CandidatesHelper
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :authenticate_user!

  def end_users
    User.where(role_id: Role.where(:name => ['Admin', 'Operator']).pluck(:id))
  end

  def candidates
    User.where(role_id: Role.where(:name => 'Candidate').pluck(:id)).order(:created_at).reverse_order
  end
end
