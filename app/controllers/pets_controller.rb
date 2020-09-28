class PetsController < ApplicationController
  before_action :set_pet, only: [:show, :edit, :update, :destroy]

  def index
    @pets = Pet.all
  end

  def show
    @adoption = Adoption.new
  end

  def new
    @pet = Pet.new
  end

  def create
    @pet = Pet.new(pet_params)
    if @pet.save
      redirect_to pet_path(@pet), notice: 'Pet criado com sucesso'
    else
      render :new
    end
  end

  def edit; end

  def update
    if @pet.update(pet_params)
      redirect_to pet_path(@pet), notice: 'Pet alterado com sucesso'
    else
      render :edit
    end
  end

  def destroy
    @pet.destroy
    redirect_to pets_path, notice: 'Pet destruido'
  end

  private

  def set_pet
    @pet = Pet.friendly.find(params[:id])
  end

  def pet_params
    params.require(:pet).permit(:name, :birth, :category, :photo)
  end
end
