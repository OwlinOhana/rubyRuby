class ComputTemper 
  def initialize(temper, im_temp, om_temp)
    @temper = temper
    @im_temp = im_temp
    @om_temp = om_temp
  end

  def comput_temper
    scale_map = {
      'C' => {
        'F' => ->(x) { 1.8 * x + 32 },
        'K' => ->(x) { x + 273.15 }
      },
      'F' => {
        'C' => ->(x) { 0.56 * (x - 32) },
        'K' => ->(x) { 0.56 * (x - 32) + 273.15 }
      },
      'K' => {
        'C' => ->(x) { x - 273.15 },
        'F' => ->(x) { (x - 273.15) * 1.8 + 32 }
      }
    }
    scale_map[@source_scale][@target_scale].call(@value).round(2)
  end     
end
