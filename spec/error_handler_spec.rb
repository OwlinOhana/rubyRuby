require './lib/error_handler'

RSpec.describe ErrorHandler do
  describe '#check_correct_scale' do
    context 'correct scale' do
      subject { ErrorHandler.new.check_correct_scale('F') }
      it { is_expected.to eq true }
    end

    context 'uncorrect scale' do
      subject { ErrorHandler.new.check_correct_scale('M') }
      it { is_expected.to eq false }
    end
  end

  describe '#check_repeating_scale' do
    context 'not repeating scale' do
      subject { ErrorHandler.new.check_repeating_scale('K', 'C') }
      it { is_expected.to eq true }
    end

    context 'repeating scale' do
      subject { ErrorHandler.new.check_repeating_scale('C', 'C') }
      it { is_expected.to eq false }
    end
  end
end
