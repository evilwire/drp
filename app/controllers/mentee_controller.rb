class MenteeController < ApplicationController
  def index
    @mentees = Users.select{|user| user.is_current_student? }
  end
end
