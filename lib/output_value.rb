class OutputValue
  def initialize(temper, im_temp, om_temp)
    @temper = temper
    @im_temp = im_temp
    @om_temp = om_temp
  end

  def res_comp
    @temper = ComputTemper.new(@temper, @im_temp, om_temp).comput_temper
    puts "Ваш результат: #{@temper}"
  end
end
