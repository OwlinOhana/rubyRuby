class SaySomething

  def initialize(temper, im_temp)
    @temper = temper
    @im_temp = im_temp
  end

  def res_comp
    @temper, @im_temp = ComputTemp.comput
    if @im_temp == 'error'
      puts 'Вы допустили ошибку, попытайтесь снова'
    else
      @temper.to_s
      puts "Ваш результат: #{@temper}"
    end
  end
end
