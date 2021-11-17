require './lib/comput_temper'
require './lib/user_start'
class OutputValue
  def run
    temper = UserStart.new.arg_temp_date_num 
    source_scale = UserStart.new.put_scale_in
    target_scale = UserStart.new.put_scale_om
    puts "#{temper}, #{source_scale}, #{target_scale}"
    temper = ComputTemper.new(temper, source_scale, target_scale).comput_temper
    puts "Ваш результат: #{temper}"
  end
end
