require './lib/say_some_user'

RSpec.describe SaySomething do
  describe '#correct first letter, incorrect second letter' do
    subject do
      temperature = SaySomething.new(1000, 'KP')
      temperature.res_comp
    end
    it { is_expected.to eq 'Вы допустили ошибку, попытайтесь снова' }
  end

  describe '#incorrect first letter, correct second' do
    subject do
      temperature = SaySomething.new(1000, 'MC')
      temperature.res_comp
    end
    it { is_expected.to eq 'Вы допустили ошибку, попытайтесь снова' }
  end

  describe '#correct all, CF' do
    subject do
      temperature = SaySomething.new(1000, 'CF')
      temperature.res_comp
    end
    it { is_expected.to eq 'Ваш результат: 1832.0' }
  end

  describe '#correct all, FC' do
    subject do
      temperature = SaySomething.new(1000, 'FC')
      temperature.res_comp
    end
    it { is_expected.to eq 'Ваш результат: 537.78' }
  end

  describe '#correct all, FK' do
    subject do
      temperature = SaySomething.new(1000, 'FK')
      temperature.res_comp
    end
    it { is_expected.to eq 'Ваш результат: 810.93' }
  end

  describe '#correct all, KF' do
    subject do
      temperature = SaySomething.new(1000, 'KF')
      temperature.res_comp
    end
    it { is_expected.to eq 'Ваш результат: 1340.33' }
  end

  describe '#correct all, KC' do
    subject do
      temperature = SaySomething.new(1000, 'KC')
      temperature.res_comp
    end
    it { is_expected.to eq 'Ваш результат: 726.85' }
  end

  describe '#correct all, CK' do
    subject do
      temperature = SaySomething.new(1000, 'CK')
      temperature.res_comp
    end
    it { is_expected.to eq 'Ваш результат: 1273.15' }
  end
end
