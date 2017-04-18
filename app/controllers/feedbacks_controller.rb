class FeedbacksController < ApplicationController
  def create
    @project = Project.find(params[:project_id])
    @feedback = @project.feedbacks.create(feedback_params)
    redirect_to project_path(@project)
  end
  
  def index
    @feedback = Feedback.all
  end
  
  private
    def feedback_params
      params.require(:feedback).permit(:commenter, :title, :body, :is_approved)
    end
end
