class FeedbacksController < ApplicationController
  def create
    @project = Project.find(params[:project_id])
    @feedback = @project.feedbacks.create(feedback_params)
    redirect_to project_path(@project)
  end
  
  def index
    @feedback = Feedback.all
  end
  
  def destroy
    @feedback = Feedback.find(params[:id])
    @feedback.destroy
    redirect_to feedbacks_path
  end
  
  private
    def feedback_params
      params.require(:feedback).permit(:commenter, :title, :body, :is_approved)
    end
end
