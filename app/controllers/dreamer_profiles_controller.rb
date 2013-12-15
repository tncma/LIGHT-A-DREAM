class DreamerProfilesController < ApplicationController

  def new
      @dreamer_profile = DreamerProfile.new
      @user = User.new
  end

  def create
    @dreamer_profile = DreamerProfile.new(dreamer_profile_params)
    @user = User.new(user_params)
    if @dreamer_profile.save
      @user.profile =@dreamer_profile
      @user.save!
      redirect_to root_url, :notice => "Signed in as Ladder!"
    else
      render "sign_in"
    end
  end

  def show
    event = Event.find_by_id(params[:id])
    current_user.addevent(event)
  end

  private
  def dreamer_profile_params
    params.require(:dreamer_profile).permit(:category,:institution,:email,:password,:password_confirmation,:username)
  end
  
  def user_params
    params.require(:dreamer_profile).permit(:email,:password,:password_confirmation,:username).tap do |whitelisted|
      params[:dreamer_profile][:user_attributes]
    end
   end
end
