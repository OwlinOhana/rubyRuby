class ComputTemp 
  @name_temp = %w[CF FC CK KC FK KF]

  def comput
    @temper, @im_temp = UserStart.arg
    if @name_temp.include?(im_temp)
      case @im_temp
      when 'CK'
        ModiTemp.comput_ck(@temper)
      when 'KC'
        ModiTemp.comput_kc(@temper)
      when 'CF'
        ModiTemp.comput_cf(@temper)
      when 'FC'
        ModiTemp.comput_fc(@temper)
      when 'FK'
        ModiTemp.comput_fk(@temper)
      when 'KF'
        ModiTemp.comput_kf(@temper)
      end        
    else
      @temper = 0
      @im_temp = 'a'
    end 
    return @temper       
  end
end
