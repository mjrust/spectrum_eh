class BodyMassesController < ApplicationController
  def index
    @body_masses = BodyMass.all
  end

  def show
    @body_mass = BodyMass.find(params[:id])
    feet = @body_mass.feet
    feet = feet.to_f
    inches = @body_mass.inches
    inches = inches.to_f
    height = feet*12+inches
    height = height**2
    weight = @body_mass.weight
    weight = weight.to_f
    @bmi = ((weight/height)*703).round 2
  end

  def new
    @body_mass = BodyMass.new
  end

  def create
    @body_mass = BodyMass.new(params[:body_mass])
    if @body_mass.save
      flash[:notice] = "Successfully created body mass."
      redirect_to @body_mass
    else
      render :action => 'new'
    end
  end

  def edit
    @body_mass = BodyMass.find(params[:id])
  end

  def update
    @body_mass = BodyMass.find(params[:id])
    if @body_mass.update_attributes(params[:body_mass])
      flash[:notice] = "Successfully updated body mass."
      redirect_to body_mass_url
    else
      render :action => 'edit'
    end
  end

  def destroy
    @body_mass = BodyMass.find(params[:id])
    @body_mass.destroy
    flash[:notice] = "Successfully destroyed body mass."
    redirect_to body_masses_url
  end
end
