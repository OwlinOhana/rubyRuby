class ModiTemp
  
  def initialize(temper)
    @temper = temper
  end

  def comput_ck
    @temper += 273.15
  end

  def comput_kc
    @temper -= 273.15
  end
  
  def comput_kf
    @temper = (1.80 * (@temper - 273.00) + 32.00).floor(2)
  end

  def comput_fk
    @temper = (((@temper + 459.67) * 5.00) / 9.00).floor(2)
  end

  def comput_cf
    @temper = (((@temper * 9.00) / 5.00) + 32.00).floor(2)
  end

  def comput_fc
    @temper = (((@temper - 32.00) * 5.00) / 9.00).floor(2)
  end
end
