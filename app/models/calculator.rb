class Calculator
  include ActiveModel::Validations
  include ActiveModel::Conversion

  attr_accessor :id, :feet, :inches, :weight
  validates_presence_of :feet, :inches, :weight

  def initialize(attributes = {})
      attributes.each do |key, value|
        self.send("#{key}=", value)
      end
      @attributes = attributes
  end

  def read_attribute_for_validation(key)
    @attributes[key]
  end

  def to_key
  end

  def save
    if self.valid?
      feet = @calculator.feet
      feet = feet.to_f
      inches = @calculator.inches
      inches = inches.to_f
      height = feet*12+inches
      height = height**2
      weight = @calculator.weight
      weight = weight.to_f
      @body_mass_index = ((weight/height)*703).round 2
      return true
    else
      return false
    end
  end
  
end

