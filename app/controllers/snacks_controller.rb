class SnacksController < ApplicationController
  def index
    snack_api = SnackAPI.new
    snack_api.get_snacks
    @permanent_snacks = snack_api.where(optional: false)
    @optional_snacks = snack_api.where(optional: true)
  end

  def new
    snack_api = SnackAPI.new
    snack_api.get_snacks
    @optional_snacks = snack_api.where(optional: true)
  end

  def create
    snack_api = SnackAPI.new
    snack_api.post_snacks(params)
    num_of_suggestions = session['num_of_suggestions'] || 0
    # check if user has made a suggestion
    if num_of_suggestions >= 1
      flash[:notice] = "You have already made a suggestion for this month...Please wait until next month"
    else
      # Add user suggestion to session for the number of suggestions made
      num_of_suggestions + 1
      flash[:notice] = "Your suggestion has been submitted"
    end
    redirect_to root_path
  end
  # Used sessions instead of cookies for security
  def vote
    snack_votes = session['total_votes'] || 0
    # checks user vote count
    if snack_votes >= 3
      # user has voted max amount of time
      flash[:notice] = "You've voted the maximum number of times for the month"
    else
      snack_votes += 1
      # lets user know his/her vote has been recorderd
      flash[:notice] = "Vote has been recorded"
    end
    session['total_votes'] = snack_votes
    redirect_to root_path
  end

  def reset
    # Reset vote count after a month to allow for users to vote the next month
    session['total_votes'] = { value: true, expires: 1.month.from.now}
    # Reset suggestions after a month to allow users to make new suggestions
    session['num_of_suggestions'] = { value: true, expires: 1.month.from.now}
  end



end
