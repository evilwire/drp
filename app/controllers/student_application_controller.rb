class StudentApplicationController < ApplicationController
  helper :all

  def new
    unless signed_in?
      redirect_to_signin from: '/signup'
    end
  end

  def index
    @applications = StudentApplication.all
    @mentors = MentorProfile.all
  end

  def create
    @project = StudentApplication.new(project_params)
    @project.users = current_user
    if @project.save
      redirect_to student_application_url(@project)
    else
      flash[:error] = @project.errors.full_messages
      render 'new'
    end
  end

  def show
    @project = StudentApplication.find(params[:id])
  end

  private
    def project_params
      params.require(:project).permit(:major,
                                      :year,
                                      :past_courses,
                                      :current_courses,
                                      :interests,
                                      :why,
                                      :favorite,
                                      :recommender,
                                      :alternate,
                                      :how,
                                      :questions)
    end
end
