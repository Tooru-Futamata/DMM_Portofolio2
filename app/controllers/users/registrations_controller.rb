# frozen_string_literal: true

class Users::RegistrationsController < Devise::RegistrationsController
  before_action :configure_permitted_parameters, only: [:create]

  before_action :ensure_normal_user, only: %i(update destroy)

  def ensure_normal_user
    if resource.email == 'guest@example.com'
      redirect_to public_user_path(@user), alert: 'ゲストユーザーは削除できません。'
    end
  end

  def after_sign_up_path_for(resource)
    public_user_path(@user)
  end

  private

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:email, :name, :name_id, :is_deleted])
  end
end
