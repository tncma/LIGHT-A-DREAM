class EventregistrationsController < ApplicationController
  def update
    @eventregistration =  Eventregistration.find_by_id(params[:id])
    logger.debug params[:points]
    logger.debug "----------------------------"
    @eventregistration.points = params[:eventregistration][:points]
    if @eventregistration.save!
      redirect_to root_url ,:notice => "Updated the results successfully!"
    end
  end
end
