class ErrorHandler
  def check_correct_scale(scale)
    if %w[C F K].include? scale
      true
    else
      puts 'An incorrect scale was entered ("F", "C" or "K")'
      false
    end
  end
  
  def check_repeating_scale(source_scale, target_scale)
    if source_scale == target_scale
      puts 'The entered scales are the same'
      false
    else
      true
    end
  end
end
