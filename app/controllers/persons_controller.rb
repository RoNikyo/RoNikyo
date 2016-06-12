class PersonsController < ApplicationController

  respond_to :js, only: [:show]

  before_action :find_user, only: [:show]

  def profile
    @users = User.all
  end

  def show; end

  private

  def find_user
    @user = User.find(params[:id])
  end
end
