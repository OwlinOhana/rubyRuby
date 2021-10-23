class SaySomething

  def initialize(temper)
    @temper = temper
  end

  def res_comp
    @temper = ComputTemp.comput
    if @temper == 'error'
      puts 'Вы допустили ошибку, попытайтесь снова'
    else
      puts "Ваш результат: #{@temper}"
    end
  end
end
