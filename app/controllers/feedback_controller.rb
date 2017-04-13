class FeedbackController < ApplicationController
  def create
    @project = Project.find(params[:project_id])
    @feedback = @project.feedback.create(feedback_params)
    redirect_to project_path(@project)
  end
  
  private
    def feedback_params
      params.require(:feedback).permit(:commenter, :title, :body)
    end
end
