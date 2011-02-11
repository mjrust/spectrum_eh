class IncentivesController < ApplicationController
  before_filter :authenticate_user!, :except  => [:show, :index]
  layout 'portal'
  
  def index
    @incentives = Incentive.all
  end

  def show
    @incentive = Incentive.find(params[:id])
  end

  def new
    @incentive = Incentive.new
  end

  def create
    @incentive = Incentive.new(params[:incentive])
    if @incentive.save
      flash[:notice] = "Successfully created incentive."
      redirect_to @incentive
    else
      render :action => 'new'
    end
  end

  def edit
    @incentive = Incentive.find(params[:id])
  end

  def update
    @incentive = Incentive.find(params[:id])
    if @incentive.update_attributes(params[:incentive])
      flash[:notice] = "Successfully updated incentive."
      redirect_to incentive_url
    else
      render :action => 'edit'
    end
  end

  def destroy
    @incentive = Incentive.find(params[:id])
    @incentive.destroy
    flash[:notice] = "Successfully destroyed incentive."
    redirect_to incentives_url
  end
end
