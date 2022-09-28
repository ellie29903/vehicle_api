class VehiclesController < ApplicationController
  # GET /vehicles
  def index
    # TODO: return all vehicles
    vehicles = Vehicle.order('created_at DESC')
    render json: {data:vehicles}
  end

  # GET /vehicles/1
  def show
    # TODO: return the vehicle specified by the id
    vehicle = Vehicle.find(params[:id])
    render json: {data:vehicle}
  end

  # POST /vehicles
  def create
    # TODO: create vehicle
    vehicle = Vehicle.new(vehicle_params)

    if vehicle.save
      render json: {data:vehicle}
    else
      render json: {data:vehicle.errors}
    end 
    
  end

  private

  def vehicle_params
    params.permit(:make, :model, :year, :battery, :maxrange)
  end

  # PATCH/PUT /vehicles/1
  def update
    # TODO: update vehicle
  end

  # DELETE /vehicles/1
  def destroy
    # TODO: delete vehicle
  end
end
