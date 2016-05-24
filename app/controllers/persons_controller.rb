class PersonsController < ApplicationController
  def profile
    @user = User.all
  end
end
