class ComputTemp 
  def initialize(temper, im_temp)
    @temper = temper
    @im_temp = im_temp
  end

  def comput
    temperature = ModiTemp.new(@temper)
    if @im_temp == 'CK'
      @temper = temperature.comput_ck
      elif @im_temp == 'KC'
      @temper = temperature.comput_kc
      elif @im_temp == 'CF'
      @temper = temperature.comput_cf
      elif @im_temp == 'FC'
      @temper = temperature.comput_fc
      elif @im_temp == 'FK'
      @temper = temperature.comput_fk
      elif @im_temp == 'KF'
      @temper = temperature.comput_kf
    else
      @temper = 'error'
    end
  end     
end
