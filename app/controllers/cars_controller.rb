class CarsController < ApplicationController
  def index
    @cars = Car.all
  end

  def show
    @car = Car.find(params[:id])
  end

  def new
    @car = Car.new
  end

  def create
    @car = Car.new(car_params)
    if @car.save
      redirect_to car_path(@car.id) #could just say @car, rails is smart enough
    else
      render :new #dont redirect_to new, cuz we'd lose some info, error info
    end
  end

  def edit
    @car = Car.find(params[:id])

  end

  def update
    @car = Car.find(params[:id])
    if @car.update(car_params)
      redirect_to car_path(@car)
    else
      render :edit
    end
  end 

  def destroy
    @car = Car.find(params[:id])
    @car.destroy
    redirect_to cars_path
  end

  private  #only things inside of this class can call this method
    def car_params
      params.require(:car).permit(:make, :model, :year, :color, :runs)
    end
end
