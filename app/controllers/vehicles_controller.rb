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

    if !(Vehicle.exists?(make: params[:make], model: params[:model], year: params[:year]))
      vehicle = Vehicle.new(vehicle_params)

      if vehicle.save
        render json: {data:vehicle}
      else
        render json: {data:vehicle.errors}
      end 
    else
      render json: {message: "this vehicle already exists!"}
    end
    
  end


  # DELETE /vehicles/1
  def destroy
    # TODO: delete vehicle
    vehicle = Vehicle.find(params[:id])
    vehicle.destroy
    render json: {data:vehicle}
  end


  # PATCH/PUT /vehicles/1
  def update
    # TODO: update vehicle
    vehicle = Vehicle.find(params[:id])

    if vehicle.update(vehicle_params)
      render json: {data:vehicle}
    else
      render json: {data:vehicle.errors}
    end
  end


  def filter 
    # TODO: return filtered vehicles
    vehicles = Vehicle.find(params[:make])
    render json: {data:vehicles}
  end 
  
  private

  def vehicle_params
    params.permit(:make, :model, :year, :battery, :maxrange)
  end


end
