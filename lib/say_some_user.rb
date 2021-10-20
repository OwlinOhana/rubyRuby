class SaySomthing
  def res_comp
    @temper, @im_temp = ComputTemp.comput
    if @temper.zero? || @im_temp == 'a'
      puts 'Вы допустили ошибку, попытайтесь снова'
    else
      puts "Ваш результат: #{@temper}"
    end
  end
end
