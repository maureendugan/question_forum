class ResponsesController < ApplicationController
  def new
    @response = Response.new
    @question = Question.find(params[:id])
  end

  def create
    @response = Response.new(response_params)
    @question = Question.find(response_params[:question_id])
    if @response.save
      respond_to do |format|
        format.html { redirect_to :back}
        format.js
      end
    else
      redirect_to question_path(@question)
    end
  end

  private
  def response_params
    params.require(:response).permit(:answer, :question_id, :user_id)
  end
end
