class PetsController < ApplicationController

  def index
    pets = Pet.all.order(:id)
    render json: pets
  end

  def create
    pet = Pet.new(
      name: params[:name],
      customer_id: params[:customer_id],
      species: params[:species],
      breed: params[:breed],
      birthday: params[:birthday],
      sex: params[:sex],
      sterilized: params[:sterilized]
    )
    if pet.save
      render json: { message: "Pet created successfully" }, status: :created
    else
      render json: { errors: pet.errors.full_messages }, status: :bad_request
    end
  end

  # def update
  #   id = params[:id]
  #   pet = Pet.find_by(id: id)
  #   pet.name = params["name"] || pet.name
  #   pet.customer_id = params["customer_id"] || pet.customer_id
  #   pet.species = params["species"] || pet.species
  #   pet.breed = params["breed"] || pet.breed
  #   pet.sex = params["sex"] || pet.sex
  #   pet.sterilized = params["sterilized"] || pet.sterilized
  #   if pet.save #happy path
  #     render json: pet
  #   else #sad path
  #     render json: {error_messages: pet.errors.full_messages}, status: 422
  #   end
  # end

  # def destroy
  #   pet_id = params["id"]
  #   pet = Pet.find_by(id: pet_id)
  #   pet.destroy
  #   render json: {message: "Pet has been deleted!"}
  # end
end
