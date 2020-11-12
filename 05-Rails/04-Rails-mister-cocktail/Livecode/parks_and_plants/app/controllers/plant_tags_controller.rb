class PlantTagsController < ApplicationController
  before_action :set_plant, only: [:new, :create]

  def new
    @plant_tag = PlantTag.new
  end

  def create
    params[:plant_tag][:tag_id].each do |tag_id|
      @plant_tag = PlantTag.new(tag_id: tag_id)
      @plant_tag.plant = @plant
      @plant_tag.save!
    end

    redirect_to garden_path(@plant.garden)
  end

  private

  def set_plant
    @plant = Plant.find(params[:plant_id])
  end
end
