class CalculatorsController < ApplicationController
  layout 'tools'
  def index        
  end
  
  def bmi
    @calculator = Calculator.new(params[:bmi]) 
    if @body_mass_index.save
      render "calculators/bmi", :notice => "Your BMI has been calculated!"
    else
      render "calculators/bmi", :notice => "Try again. Something went wrong!"
    end
  end

end