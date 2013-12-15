class EventsController < ApplicationController
  before_filter :authenticate_user!
  def new
    @event=Event.new
  end

  def create
    @event = Event.new(params[:event])
    if @event
      @event.ladder_id = current_user.id
      if @event.save!
        redirect_to root_url
      
      end
    end
  end

  def show
    @event = Event.find_by_id(params[:id])
  end

  def edit
    @event = Event.find_by_id(params[:id])
  end

  def index
  end  

  def update
    @event = Event.find_by_id(params[:id])
    @event.all_participants.each do |e|
      e.save
    end  
    redirect_to root_url
  end

   def event_params
     params.require(:event).permit(:eventname,:location,:eventstart,:eventend,:eventtype)
   end

end
