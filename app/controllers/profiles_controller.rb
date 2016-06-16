class ProfilesController < ApplicationController
  before_action :set_profile, only: [:show, :edit, :update, :destroy, :finish_signup]
  before_action :authenticate_user!

  def create
  end

  def index
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

private

  def set_profile
      @profile = current_user.profile
      if @profile.nil?
        @profile = Profile.new(user: current_user)
      end
      @profile
  end

  def profile_params
    params.require(:profile).permit(:first_name, :last_name, :department, :company, :employee_number, :approver)
  end
  
end
