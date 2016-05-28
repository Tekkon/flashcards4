class AdminController < ApplicationController
  def show
    if AdminPolicy.new(current_user).show?
      render :template => "admin/index"
    else
      redirect_to root_path
    end
  end
end