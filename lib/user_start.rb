class UserStart
  @om_temp = 'a'

  def arg
    puts 'Введите значение'
    @temper = gets.chomp.to_f
    puts 'Введите единицу измерения'
    @im_temp = gets.chomp
    puts 'Введите единицу измерения,в которую необходимо перевести'
    @om_temp = gets.chomp
    @im_temp += @om_temp    
    return @temper, @im_temp
  end 
end
