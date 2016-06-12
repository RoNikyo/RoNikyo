class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :authenticate_user!
  helper_method :is_current_user?

  # layout 'basicpage'

  private

  def is_current_user? user_id
    current_user.id == user_id
  rescue
    false
  end
end
