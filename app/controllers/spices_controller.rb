class SpicesController < ApplicationController

  def index 
    spices = Spice.all 
    render json: spices
  end

  def show
    spices = find_spice
    render json: spices
  end

  def create
    spices = Spice.create(spices_params)
    render json: spices
  end

  def update
    spices = find_spice
    spices.update(spices_params)
    render json: spices
  end

  def destroy
    spices = find_spice
    spices.destroy
    head :no_content
  end

  private

  def find_spice
    Spice.find(params[:id])
  end

  def spices_params
    params.permit(:title, :image, :description, :notes, :rating)
  end

end



