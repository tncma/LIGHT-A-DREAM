class HomeController < ApplicationController
  def new
    if current_user==nil
      redirect_to user_session_path
    end
  end
end
