class ComputTemp 
  @name_temp = %w[CF FC CK KC FK KF]

  def initialize(temper, im_temp)
    @temper = temper
    @im_temp = im_temp
  end

  def comput
    if @name_temp.include?(im_temp)
      ModiTemp.new(@temper)
      case @im_temp
      when 'CK'
        @temper = ModiTemp.comput_ck
      when 'KC'
        @temper = ModiTemp.comput_kc
      when 'CF'
        @temper = ModiTemp.comput_cf
      when 'FC'
        @temper = ModiTemp.comput_fc
      when 'FK'
        @temper = ModiTemp.comput_fk
      when 'KF'
        @temper = ModiTemp.comput_kf
      end        
    else
      @im_temp = 'error'
    end 
    return @temper, @im_temp       
  end
end
