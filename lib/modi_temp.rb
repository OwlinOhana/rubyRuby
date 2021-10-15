class ModiTemp < UserStart
  def comput_ck(temper)
    resul = temper + 273.15 
    puts resul
  end

  def comput_kc(temper)
    @resul = temper - 273.15  
    puts resul
  end
  
  def comput_kf(temper)
    @resul = 1.8 * (temper - 273.00) + 32.00
    puts resul
  end

  def comput_fk(temper)
    @resul = ((temper + 459.67) * 5.00) / 9.00
    puts resul 
  end

  def comput_cf(temper)
    @resul = ((temper * 9.00) / 5.00) + 32.00
    puts resul
  end

  def comput_fc(temper)
    @resul = ((temper - 32.00) * 5.00) / 9.00
    puts resul 
  end
end		
  