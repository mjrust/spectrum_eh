class CalculatorsController < ApplicationController
  layout 'tools'
  
  def bmi
    unless params.blank?
      feet = params[:feet]
      feet = feet.to_f
      inches = params[:inches]
      inches = inches.to_f
      height = feet*12+inches
      height = height**2
      weight = params[:weight]
      weight = weight.to_f
      @body_mass_index = ((weight/height)*703).round 2
    else
      render "calculators/bmi"
    end
  end
  
  def thr
    unless params.blank?
      @age = params[:age]
      @age = @age.to_i
      @thr_low = ((220-@age)*0.65).round 2
      @thr_high = ((220-@age)*0.85).round 2
    else
      render "calculators/thr"
    end
  end

end