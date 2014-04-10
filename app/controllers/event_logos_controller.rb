class EventLogosController < ApplicationController
  before_action :set_event_logo, only: [:show, :edit, :update, :destroy]

  # GET /event_logos
  # GET /event_logos.json
  def index
    @event_logos = EventLogo.all
  end

  # GET /event_logos/1
  # GET /event_logos/1.json
  def show
  end

  # GET /event_logos/new
  def new
    @event_logo = EventLogo.new
  end

  # GET /event_logos/1/edit
  def edit
  end

  # POST /event_logos
  # POST /event_logos.json
  def create
    @event_logo = EventLogo.new(event_logo_params)

    respond_to do |format|
      if @event_logo.save
        format.html { redirect_to @event_logo, notice: 'Event logo was successfully created.' }
        format.json { render action: 'show', status: :created, location: @event_logo }
      else
        format.html { render action: 'new' }
        format.json { render json: @event_logo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /event_logos/1
  # PATCH/PUT /event_logos/1.json
  def update
    respond_to do |format|
      if @event_logo.update(event_logo_params)
        format.html { redirect_to @event_logo, notice: 'Event logo was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @event_logo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /event_logos/1
  # DELETE /event_logos/1.json
  def destroy
    @event_logo.destroy
    respond_to do |format|
      format.html { redirect_to event_logos_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event_logo
      @event_logo = EventLogo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def event_logo_params
      params.require(:event_logo).permit(:logo_id)
    end
end
