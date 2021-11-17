require './lib/output_value'

RSpec.context OutputValue do
  describe '#print value' do
    context 'F->C' do
      subject { OutputValue.new(1000, 'C', 'F').res_comp }
      it { is_expected.to eq 'Ваш результат: 1832.0' }
    end

    context 'F->C' do
      subject { OutputValue.new(1000, 'F', 'C').res_comp }
      it { is_expected.to eq 'Ваш результат: 537.77' }
    end

    context 'F->K' do
      subject { OutputValue.new(1000, 'F', 'K').res_comp }
      it { is_expected.to eq 'Ваш результат: 810.92' }
    end

    context 'K->F' do
      subject { OutputValue.new(1000, 'K', 'F').res_comp }
      it { is_expected.to eq 'Ваш результат: 1340.6' }
    end

    context 'K->C' do
      subject { OutputValue.new(1000, 'K', 'C').res_comp }
      it { is_expected.to eq 'Ваш результат: 726.85' }
    end

    context 'C->K' do
      subject { OutputValue.new(1000, 'C', 'K').res_comp }
      it { is_expected.to eq 'Ваш результат: 1273.15' }
    end
  end
end
