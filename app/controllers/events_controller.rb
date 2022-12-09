# frozen_string_literal: true
require 'active_support/core_ext'
require 'date'
class EventsController < ApplicationController
  before_action :set_event, only: %i[show edit update destroy]
  before_action :authenticate_user!, except: %i[show index]
  # GET /events or /events.json
  def index
    @events = Event.all
    @events = Event.order(created_at: :desc)

    #@events_to_delete = @events.where( @event.date.strftime('%m-%d-%Y') " < ?", Time.now.strftime('%m-%d-%Y') )

    #if @event.date.strftime('%m-%d-%Y') < Time.now.strftime("%m-%d-%Y")
     # @event.destroy
    #end

  end

  # GET /events/1 or /events/1.json
  def show
    @event = Event.find(params[:id])
    @etitle = @event.title
    @ebody = @event.body
    @elocation = @event.location
    @edate = @event.date
    @etime = @event.date
    @eorganizer = @event.organizer

    #@events_to_delete = @event.where(@event.date.strftime('%m-%d-%Y') < Time.now.strftime('%m-%d-%Y'))
    
  end

  # GET /events/new
  def new
    @event = Event.new
  end

  # GET /events/1/edit
  def edit; end

  # POST /events or /events.json
  def create
    @event = Event.new(event_params)
    @event.user = current_user
    respond_to do |format|
      if @event.save && (@event.ann == true)
        format.html do
          redirect_to new_announcement_path(event_id: @event.id), notice: 'Create an Announcement for this Event.'
        end
        # format.json { render :show, status: :created, location: @event }
      elsif @event.save && (@event.ann == false)
        format.html { redirect_to event_url(@event), notice: 'Event was successfully created.' }
        format.json { render :show, status: :created, location: @event }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # if @event.ann == true
  # flash[:success] = "The Event and Announcement was successfully created."
  # redirect_to new_announcement_path(ann: @event.ann)

  # PATCH/PUT /events/1 or /events/1.json
  def update
    respond_to do |format|
      if @event.update(event_params)
        format.html { redirect_to event_url(@event), notice: 'Event was successfully updated.' }
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
      format.html { redirect_to events_url, notice: 'Event was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def set_active_status
    @event = Event.find(params[:id])
    Event.update_active_status(@event)
    redirect_to events_path
  end

  # send info from new event form to announcement form
  def capture_form_data
    @event = Event.find(params[:id])
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
