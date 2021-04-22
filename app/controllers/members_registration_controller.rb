class MembersRegistrationController < Devise::MembersRegistrationController
  private

  def sign_up_params
    params.require(:member).permit([:username, :email, :password, :password_confirmation])
  end

  def update_params
    params.require(:member).permit([:username, :email, :password, :password_confirmation, :current_password])
  end
end