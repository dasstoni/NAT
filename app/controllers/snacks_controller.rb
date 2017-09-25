class SnacksController < ApplicationController
  def index
    @permanent_snacks = Snack.where(optional: false)
    @optional_snacks = Snack.where(optional: true) #going to be added a suggested field to the optional snacks.
  end

  # def new
  # end
  #
  # def create
  # end
  #
  # def update
  # end
  #
  # private
  #
  # def snack_params
  #   params.require(:snack).permit(:name, :purchase_location)
  # end

end
