class FlightSchedulesController < ApplicationController
  # GET /flight_schedules
  # GET /flight_schedules.json
  def index
    @flight_schedules = FlightSchedule.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @flight_schedules }
    end
  end

  # GET /flight_schedules/1
  # GET /flight_schedules/1.json
  def show
    @flight_schedule = FlightSchedule.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @flight_schedule }
    end
  end

  # GET /flight_schedules/new
  # GET /flight_schedules/new.json
  def new
    @flight_schedule = FlightSchedule.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @flight_schedule }
    end
  end

  # GET /flight_schedules/1/edit
  def edit
    @flight_schedule = FlightSchedule.find(params[:id])
  end

  # POST /flight_schedules
  # POST /flight_schedules.json
  def create
    @flight_schedule = FlightSchedule.new(params[:flight_schedule])

    respond_to do |format|
      if @flight_schedule.save
        format.html { redirect_to @flight_schedule, notice: 'Flight schedule was successfully created.' }
        format.json { render json: @flight_schedule, status: :created, location: @flight_schedule }
      else
        format.html { render action: "new" }
        format.json { render json: @flight_schedule.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /flight_schedules/1
  # PUT /flight_schedules/1.json
  def update
    @flight_schedule = FlightSchedule.find(params[:id])

    respond_to do |format|
      if @flight_schedule.update_attributes(params[:flight_schedule])
        format.html { redirect_to @flight_schedule, notice: 'Flight schedule was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @flight_schedule.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /flight_schedules/1
  # DELETE /flight_schedules/1.json
  def destroy
    @flight_schedule = FlightSchedule.find(params[:id])
    @flight_schedule.destroy

    respond_to do |format|
      format.html { redirect_to flight_schedules_url }
      format.json { head :no_content }
    end
  end
end
