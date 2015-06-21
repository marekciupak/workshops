class UsersController < ApplicationController

  before_action :authenticate_user!

  def show
    @user = current_user
    @reviews = @user.reviews.order(:created_at).limit(5)
  end
end
