require './lib/comput_temper'
RSpec.context ComputTemper do
  describe '#converter' do
    context 'C->F' do
      subject { ComputTemper.new(1000, 'C', 'F').comput_temper }
      it { is_expected.to eq 1832.0 }
    end

    context 'F->C' do
      subject { ComputTemper.new(1000, 'F', 'C').comput_temper }
      it { is_expected.to eq 537.77 }
    end

    context 'F->K' do
      subject { ComputTemper.new(1000, 'F', 'K').comput_temper }
      it { is_expected.to eq 815.23 }
    end

    context 'K->F' do
      subject { ComputTemper.new(1000, 'K', 'F').comput_temper }
      it { is_expected.to eq 1340.33 }
    end

    context 'K->C' do
      subject { ComputTemper.new(1000, 'K', 'C').comput_temper }
      it { is_expected.to eq 726.85 }
    end

    context 'C->K' do
      subject { ComputTemper.new(1000, 'C', 'K').comput_temper }
      it { is_expected.to eq 1273.15 }
    end
  end
end
