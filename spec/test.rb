require './lib/comput_temp'
RSpec.describe ComputTemp do
  describe '#correct first letter, incorrect second letter' do
    subject do
      temperature = ComputTemp.new(1000, 'KP')
      temperature.comput
    end
    it { is_expected.to eq 'error' }
  end
end
RSpec.describe ComputTemp do
  describe '#incorrect first letter, correct second' do
    subject do
      temperature = ComputTemp.new(1000, 'MC')
      temperature.comput
    end
    it { is_expected.to eq 'error' }
  end
end
RSpec.describe ComputTemp do
  describe '#correct all, CF' do
    subject do
      temperature = ComputTemp.new(1000, 'CF')
      temperature.comput
    end
    it { is_expected.to eq 1832.0 }
  end
end

RSpec.describe ComputTemp do
  describe '#correct all, FC' do
    subject do
      temperature = ComputTemp.new(1000, 'FC')
      temperature.comput
    end
    it { is_expected.to eq 537.77 }
  end
end
RSpec.describe ComputTemp do
  describe '#correct all, FK' do
    subject do
      temperature = ComputTemp.new(1000, 'FK')
      temperature.comput
    end
    it { is_expected.to eq 810.92 }
  end
end 
RSpec.describe ComputTemp do 
  describe '#correct all, KF' do
    subject do
      temperature = ComputTemp.new(1000, 'KF')
      temperature.comput
    end
    it { is_expected.to eq 1340.6 }
  end
end
RSpec.describe ComputTemp do
  describe '#correct all, KC' do
    subject do
      temperature = ComputTemp.new(1000, 'KC')
      temperature.comput
    end
    it { is_expected.to eq 726.85 }
  end
end
RSpec.describe ComputTemp do
  describe '#correct all, CK' do
    subject do
      temperature = ComputTemp.new(1000, 'CK')
      temperature.comput
    end
    it { is_expected.to eq 1273.15 }
  end
end
