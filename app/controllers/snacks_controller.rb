class SnacksController < ApplicationController
  def index
    # response = SnackAPI.get_snacks
    #
    # if response.success?
    #   @snacks = response[:snacks]
    # else
    #   flash.now[:error] = "Could not fetch snacks"
    #   @snacks = []
    # end
    # @snacks = Snack.new.perform
    # @permanent_snacks = Snack.where(optional: false)
    # @optional_snacks = Snack.where(optional: true)
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
