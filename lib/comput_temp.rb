class ComputTemp 
  def initialize(temper, im_temp)
    @temper = temper
    @im_temp = im_temp
  end

  def comput
    temperature = ModiTemp.new(@temper)
    case @im_temp
      when 'CK'
        @temper = temperature.comput_ck
      when 'KC'
        @temper = temperature.comput_kc
      when 'CF'
        @temper = temperature.comput_cf
      when 'FC'
        @temper = temperature.comput_fc
      when 'FK'
        @temper = temperature.comput_fk
      when 'KF'
        @temper = temperature.comput_kf
      else
        @temper = 'error'
    end
  end     
end
