require './lib/error_handler'
class UserStart
  attr_accessor :temper, :om_temp, :im_temp 

  def initialize
    @temper = temper
    @om_temp = om_temp
    @im_temp = im_temp
  end

  def arg_temp_date_num
    puts 'Введите значение'
    @temper = gets.chomp.to_f
  end 

  def put_scale_in
    puts 'Введите единицу измерения'
    @im_temp = gets.chomp
    if ErrorHandler.new.check_correct_scale(@im_temp) == false
      put_scale_in
    else
      @im_temp
    end
  end

  def put_scale_om
    puts 'Введите единицу измерения,в которую необходимо перевести'
    @om_temp = gets.chomp
    if ErrorHandler.new.check_correct_scale(@om_temp) == false
      put_scale_in
    else
      @om_temp 
    end

    if ErrorHandler.new.check_repeating_scale(@im_temp, @om_temp) == false
      put_scale_in
    else
      @om_temp
    end
  end
end
