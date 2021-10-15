class ComputTemp < ModiTemp
  attr_accesor :name_temp

  def comput(temper, im_temp)
    if name_temp.include?(im_temp)
      SaySomthing.res_comp 
      case im_temp
      when 'CK'
        ModiTemp.comput_ck(temper)
      when 'KC'
        ModiTemp.comput_kc(temper)
      when 'CF'
        ModiTemp.comput_cf(temper)
      when 'FC'
        ModiTemp.comput_fc(temper)
      when 'FK'
        ModiTemp.comput_fk(temper)
      when 'KF'
        ModiTemp.comput_kf(temper)
      end        
    else
      SaySomthing.warn_error
      UserStart.arg
    end        
  end
end
