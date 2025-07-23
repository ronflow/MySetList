class EventSetsController < ApplicationController
  before_action :set_event_set, only: %i[ show edit update destroy ]

  # GET /event_sets or /event_sets.json
  def index
    @event_sets = EventSet.all
  end

  # GET /event_sets/1 or /event_sets/1.json
  def show
  end

  # GET /event_sets/new
  def new
    @event_set = EventSet.new
  end

  # GET /event_sets/1/edit
  def edit
  end

  # POST /event_sets or /event_sets.json
  def create
    @event_set = EventSet.new(event_set_params)

    respond_to do |format|
      if @event_set.save
        format.html { redirect_to @event_set, notice: "Event set was successfully created." }
        format.json { render :show, status: :created, location: @event_set }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @event_set.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /event_sets/1 or /event_sets/1.json
  def update
    respond_to do |format|
      if @event_set.update(event_set_params)
        format.html { redirect_to @event_set, notice: "Event set was successfully updated." }
        format.json { render :show, status: :ok, location: @event_set }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @event_set.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /event_sets/1 or /event_sets/1.json
  def destroy
    @event_set.destroy!

    respond_to do |format|
      format.html { redirect_to event_sets_path, status: :see_other, notice: "Event set was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event_set
      @event_set = EventSet.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def event_set_params
      params.expect(event_set: [ :event_id, :artist_set_id, :position, :active ])
    end
end
