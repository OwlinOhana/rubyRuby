class SaySomething
  def initialize(temper, im_temp)
    @temper = temper
    @im_temp = im_temp
  end

  def res_comp
    @temper = ComputTemp.new(@temper, @im_temp).comput
    if @temper == 'error'
      puts 'Вы допустили ошибку, попытайтесь снова'
    else
      puts "Ваш результат: #{@temper}"
    end
  end
end
