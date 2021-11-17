class UserStart
  attr_accesor :temper, :om_temp, :im_temp 
  def arg_temp_date_num
    puts 'Введите значение'
    @temper = gets.chomp.to_f
  end 

  def put_scale_in
    puts 'Введите единицу измерения'
    ErrorHanlder.check_correct_scale(gets.chomp) == true ? put_scale_in : :@im_temp
  end

  def put_scale_om
    puts 'Введите единицу измерения,в которую необходимо перевести'
    @om_temp = gets.chomp
    ErrorHanlder.check_correct_scale(gets.chomp) == true ? put_scale_in : :@om_temp
    ErrorHanlder.check_repeating_scale(@im_temp, @om_temp)
  end
end
