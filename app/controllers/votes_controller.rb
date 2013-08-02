class VotesController < ApplicationController

  def index
    @votes = Vote.all
  end

  def show
    @vote = Vote.find_by_id(params[:id])
  end

  def new
    @vote = Vote.new
  end

  def create
    @vote = Vote.new
    @vote.movie_id = params[:movie_id]
    @vote.user_id = params[:user_id]
    
    if @vote.save
      redirect_to votes_url
    else
      render 'new'
    end
  end

  def edit
    @vote = Vote.find_by_id(params[:id])
  end

  def update
    @vote = Vote.find_by_id(params[:id])
    @vote.movie_id = params[:movie_id]
    @vote.user_id = params[:user_id]
    
    if @vote.save
      redirect_to votes_url
    else
      render 'new'
    end
  end

  def destroy
    @vote = Vote.find_by_id(params[:id])
    @vote.destroy
    redirect_to votes_url
  end
end
