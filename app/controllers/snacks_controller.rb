class SnacksController < ApplicationController
  def index
    snack_api = SnackAPI.new
    snack_api.get_snacks
    @permanent_snacks = snack_api.where(optional: false)
    @optional_snacks = snack_api.where(optional: true) #going to be added a suggested field to the optional snacks.
  end

  def new
    snack_api = SnackAPI.new
    snack_api.get_snacks
    @optional_snacks = snack_api.where(optional: true)
  end

  def create
    snack_api = SnackAPI.new
    snack_api.post_snacks(params)
    redirect_to root_path
  end

  def vote
    snack_votes = session['total_votes'] || 0

    if snack_votes >= 3
      # user has voted max amount of time
      flash[:notice] = "You've voted max times"
    else
      snack_votes += 1
      flash[:notice] = "Vote has been recorded"
    end
    session['total_votes'] = snack_votes
    redirect_to root_path
  end

  def update
  end

  # private
  #
  # def snack_params
  #   params.require(:snack).permit(:name, :purchase_location)
  # end

end
