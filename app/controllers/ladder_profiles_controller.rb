class LadderProfilesController < ApplicationController

  def new
      @ladder_profile = LadderProfile.new
      @user = User.new
  end

  def create
      
      @ladder_profile = LadderProfile.new(ladder_profile_params)
    #      @ladder_profile = LadderProfile.new(registration_no: lp[:registration_no],institution: lp[:institution])
   
      @user = User.new(user_params)
    #   @user = User.new(username: lp[:username],:email => lp[:email],password: lp[:password],password_confirmation: lp[:password_confirmation])
    if @ladder_profile.save
      @user.profile =@ladder_profile
      @user.save!
      flash[:success] =  "Login Successful!"
      redirect_to root_url 
    else
      render "sign_in" ,:notice => "Invalid credentials!"
    end
  end

private
   def ladder_profile_params
     params.require(:ladder_profile).permit(:registration_no,:institution,:email,:password,:password_confirmation,:username)
   end

   def user_params
    
   #  params[:ladder_profile].permit(:email, :password,:password_confirmation, :username)
     params.require(:ladder_profile).permit(:email,:password,:password_confirmation,:username).tap do |whitelisted|
       params[:ladder_profile][:user_attributes]
     end
   end
end
