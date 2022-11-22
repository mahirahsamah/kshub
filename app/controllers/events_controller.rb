class EventsController < ApplicationController
  before_action :set_event, only: %i[ show edit update destroy ]
  before_action :authenticate_user!, except: [:show, :index]
  # GET /events or /events.json
  def index
    @events = Event.all
  end

  # GET /events/1 or /events/1.json
  def show
  end

  # GET /events/new
  def new
    @event = Event.new
    @etitle = params[:title]
    @ebody = params[:body]
    @elocation = params[:location]
    @edate = params[:date]
    @eorganizer = params[:organizer]
  end

  # GET /events/1/edit
  def edit
  end

  # POST /events or /events.json
  def create
    @event = Event.new(event_params)
    @event.user = current_user
    respond_to do |format|
      if @event.save and @event.ann == true
        format.html { redirect_to new_announcement_path(event_id: @event.id), notice: "Create an Announcement for this Event." }
        #format.json { render :show, status: :created, location: @event }
      elsif @event.save and @event.ann == false
        format.html { redirect_to event_url(@event), notice: "Event was successfully created." }
        format.json { render :show, status: :created, location: @event }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  #if @event.ann == true
    #flash[:success] = "The Event and Announcement was successfully created."
    #redirect_to new_announcement_path(ann: @event.ann)

  # PATCH/PUT /events/1 or /events/1.json
  def update
    respond_to do |format|
      if @event.update(event_params)
        format.html { redirect_to event_url(@event), notice: "Event was successfully updated." }
        format.json { render :show, status: :ok, location: @event }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /events/1 or /events/1.json
  def destroy
    @event.destroy

    respond_to do |format|
      format.html { redirect_to events_url, notice: "Event was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  # send info from new event form to announcement form
  def capture_form_data
    @etitle = params[:title]
    @ebody = params[:body]
    @elocation = params[:location]
    @edate = params[:date]
    @eorganizer = params[:organizer]
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event
      @event = Event.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def event_params
      params.require(:event).permit(:title, :body, :location, :date, :organizer, :ann, :make_event_announcement)
    end
end
