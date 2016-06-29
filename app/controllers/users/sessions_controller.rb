class Users::SessionsController < Devise::SessionsController
# before_filter :configure_sign_in_params, only: [:create]
  def after_sign_in_path_for(resource)
    if current_user.role_id == 3
      on_board_url(id: current_user.id)
    else
      root_url
    end
  end

  # GET /resource/sign_in
  def new
    super
  end

  # POST /resource/sign_in
   #def create
   #  super
   #end

  # DELETE /resource/sign_out
  # def destroy
  #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.for(:sign_in) << :attribute
  # end
end
