class VotesController < ApplicationController
  def create
    @answer = Answer.find(params[:answer_id])
    @vote = @answer.votes.create
    respond_to do |format|
      format.html { redirect_to questions_path}
      format.js
    end
  end



end
