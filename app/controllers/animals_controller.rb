class AnimalsController < ApplicationController
  def index
    @animals = Animal.all.order(name: :asc)
  end

  def new
  end

  def create
    # TODO: Adjust the logic to send an error message if submission is invalid.

    @animal = Animal.new(
      name: params[:animalName]
    )
    if @animal.save
      render json: {
        message: "success!"
      }, status: 200
    else
      render json: @animal.errors.full_messages, status: 422
    end
  end
end
