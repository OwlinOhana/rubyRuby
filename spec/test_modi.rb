require './lib/modi_temp'
RSpec.describe ModiTemp do

  describe '#correct all, CF' do
    subject do
      temperature = ModiTemp.new(1000)
      temperature.comput_cf
    end
    it { is_expected.to eq 1832.0 }
  end

  describe '#correct all, FC' do
    subject do
      temperature = ModiTemp.new(1000)
      temperature.comput_fc
    end
    it { is_expected.to eq 537.77 }
  end

  describe '#correct all, FK' do
    subject do
      temperature = ModiTemp.new(1000)
      temperature.comput_fk
    end
    it { is_expected.to eq 810.92 }
  end
  
  describe '#correct all, KF' do
    subject do
      temperature = ModiTemp.new(1000)
      temperature.comput_kf
    end
    it { is_expected.to eq 1340.6 }
  end

  describe '#correct all, KC' do
    subject do
      temperature = ModiTemp.new(1000)
      temperature.comput_kc
    end
    it { is_expected.to eq 726.85 }
  end

  describe '#correct all, CK' do
    subject do
      temperature = ModiTemp.new(1000)
      temperature.comput_ck
    end
    it { is_expected.to eq 1273.15 }
  end
end
