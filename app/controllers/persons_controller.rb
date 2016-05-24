class PersonsController < ApplicationController

  respond_to :js, only: [:show]

  def profile
    @user = User.all
  end

  def show
    @user = User.find(current_user.id)
  end
end
