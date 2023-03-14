class Plant < ApplicationRecord
   #plants GET /plants returns an array of all plants
   def index
    plants = Plant.all
    render json: plants
end
#Plants GET /plants/:id returns the first plant and second plant
def show
    plant = Plant.find(params[:id])
    render json: plant
end

#Plants POST /plants creates a new plant
def create
    plant = Plant.create(plant_params)
    render json: plant
end
private 
def plant_params
  params.permit(:name, :image, :price)
end  
end
