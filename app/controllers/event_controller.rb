   
  def index
      @events = Event.all
  end
    
  def new
      @event = Event.new
  end
    
  def create
      @event = current_user.events.new(event_params)
      if @event.save
          flash[:success] = "Event enregistred"
          redirect_to @event
      else
          render 'new'
      end
  end

  def show
      @event = Event.find(params[:id])
  end
    
  def attend
      @event.attendees << current_user
      @event.save
  end
        
    private
    def event_params
        params.require(:event).permit(:description, :date, :place)
    end
end
