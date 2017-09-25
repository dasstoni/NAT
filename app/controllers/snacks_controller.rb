class SnacksController < ApplicationController
  def index
    snack_api = SnackAPI.new
    snack_api.get_snacks
    @permanent_snacks = snack_api.where(optional: false)
    @optional_snacks = snack_api.where(optional: true) #going to be added a suggested field to the optional snacks.
  end

  def new
  end

  def create
  end

  def update
  end

  # private
  #
  # def snack_params
  #   params.require(:snack).permit(:name, :purchase_location)
  # end

end
