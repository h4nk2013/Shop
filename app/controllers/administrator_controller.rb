class AdministratorController < ApplicationController
  before_filter :authenticate_user!
  def index
    @user = User.joins(:purchases).group("users.id")
  end

  def show
    @user = User.find(params[:user])
  end
end
