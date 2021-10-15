class UserStart
  attr_accesor :temper, :im_temp, :om_temp, :resul, :name_temp

  def initialize
    @temper = temper
    @im_temp = im_temp
    @om_temp = om_temp
    @resul = resul
    @name_temp = %w[CF FC CK KC FK KF]
  end

  def arg
    puts 'Введите значение'
    @temper = gets.chomp.to_f
    puts 'Введите единицу измерения'
    @im_temp = gets.chomp
    puts 'Введите единицу измерения,в которую необходимо перевести'
    @om_temp = gets.chomp
    @im_temp = im_temp + om_temp 
  end 
end
