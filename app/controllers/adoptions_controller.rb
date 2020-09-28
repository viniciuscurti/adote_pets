class AdoptionsController < ApplicationController
  def create
    @pet = Pet.find(params[:pet_id])
    @adoption = Adoption.new(adoption_params)
    @adoption.pet = @pet

    if @adoption.save
      redirect_to pet_path(@pet)
    else
      render 'pets/show'
    end
  end

  private

  def adoption_params
    params.require(:adoption).permit(:adopter, :pet_id)
  end
end
