class StudentApplicationController < ApplicationController
  def my_logger
      @@my_logger ||= Logger.new("/tmp/my.log")
  end

  def new
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

  def list

  end

  private
    def project_params
      params.require(:project).permit(:major,
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
