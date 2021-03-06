class TeamsController < ApplicationController

  before_action :find_team, only: [:show, :edit, :update, :destroy]

  def index
  	@teams = Team.all
  end

  def new
  	@team = Team.new
  end

  def show
  end

  def create
  	@team = Team.new (team_params)

  	if @team.save
  		redirect_to @team
  	else
  		render 'new'
  	end
  end

  def edit
  end

  def update
  	if @team.update(team_params)
  		redirect_to @team
  	else
  		render 'edit'
  	end
  end

  def destroy
  	@team.destroy
  	redirect_to root_path
  end

  private

  def team_params
  	params.require(:team).permit(:name, :ground, :capacity, :manager, :website)
  end

  def find_team
  	@team = Team.find(params[:id])
  end


end
