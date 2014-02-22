class ProjectController < ApplicationController
  def my_logger
      @@my_logger ||= Logger.new("/tmp/my.log")
  end
  def new
  end

  def create
    @project = Project.new(project_params)
    if @project.save
      redirect_to project_url(@project)
    else
      flash[:error] = @project.errors.full_messages
      render 'new'
    end
  end

  def show
    @project = Project.find(params[:id])
  end

  private
    def project_params
      params.require(:project).permit(:title,
                                      :summary,
                                      :description,
                                      :student_id,
                                      :mentor_id)
    end
end
