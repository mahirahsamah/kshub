# frozen_string_literal: true

class AnnouncementsController < ApplicationController
  before_action :set_announcement, only: %i[show edit update destroy]
  before_action :authenticate_user!, except: %i[show index]
  # GET /announcements or /announcements.json
  def index
    @announcements = Announcement.all
  end

  # GET /announcements/1 or /announcements/1.json
  def show; end

  # GET /announcements/new
  def new
    @announcement = Announcement.new
    if params[:event_id]
      @event = Event.find(params[:event_id])
      @etitle = @event.title
      @ebody = @event.body
      @elocation = @event.location
      @edate = @event.date
      @eorganizer = @event.organizer
    end
  end

  # GET /announcements/1/edit
  def edit; end

  # POST /announcements or /announcements.json
  def create
    @announcement = Announcement.new(announcement_params)
    @announcement.user = current_user
    respond_to do |format|
      if @announcement.save
        # to send email every time announemenet is created
        AnnMailer.with(user: current_user, announcement: @announcement).ann_created.deliver_later
        format.html { redirect_to announcement_url(@announcement), notice: 'Announcement was successfully created.' }
        format.json { render :show, status: :created, location: @announcement }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @announcement.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /announcements/1 or /announcements/1.json
  def update
    respond_to do |format|
      if @announcement.update(announcement_params)
        format.html { redirect_to announcement_url(@announcement), notice: 'Announcement was successfully updated.' }
        format.json { render :show, status: :ok, location: @announcement }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @announcement.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /announcements/1 or /announcements/1.json
  def destroy
    @announcement.destroy

    respond_to do |format|
      format.html { redirect_to announcements_url, notice: 'Announcement was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  # see if "make announcement" check box is true or false from events
  # def check_event_announcement
  # @make_event_announcement = params[:make_event_announcement]
  # end

  def set_active_status
    @announcement = Announcement.find(params[:id])
    Announcement.update_active_status(@announcement)
    redirect_to announcements_path
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_announcement
    @announcement = Announcement.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def announcement_params
    params.require(:announcement).permit(:title, :body)
  end
end
