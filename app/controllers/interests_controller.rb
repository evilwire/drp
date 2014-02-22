class InterestsController < ApplicationController
  def index
    interests = []
    if current_user.mentor_profile
       interests = current_user.mentor_profile.interests
    end

    respond_to do |format|
       format.json { render json: interests, status: :created }
    end
  end
end
