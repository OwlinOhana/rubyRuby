class UserStart
  def arg_temp_date_num
    puts 'Введите значение'
    @temper = gets.chomp.to_f
  end 

  def arg_temp_date_val
    puts 'Введите единицу измерения'
    @im_temp = gets.chomp
    puts 'Введите единицу измерения,в которую необходимо перевести'
    @om_temp = gets.chomp
    @im_temp += @om_temp
  end
end
