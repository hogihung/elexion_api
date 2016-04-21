class CandidatesController < ApplicationController
  include ActionController::Serialization

  def index
    @candidates = Candidate.all
    render json: @candidates
  end

  def show
    @candidate = Candidate.find(params[:id])
    render json: @candidate
  end

end
