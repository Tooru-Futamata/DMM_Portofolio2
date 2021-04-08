# frozen_string_literal: true

class Users::RegistrationsController < Devise::RegistrationsController

  before_action :configure_permitted_parameters, only: [:create]

  def after_sign_up_path_for(resource)
      public_user_path(@user)
  end

  private

   def configure_permitted_parameters
     devise_parameter_sanitizer.permit(:sign_up, keys:[:email, :name, :name_id, :is_deleted])
   end

end
