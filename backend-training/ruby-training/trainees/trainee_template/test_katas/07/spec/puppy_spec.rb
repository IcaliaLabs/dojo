require_relative '../lib/puppy'

describe Puppy do
  subject { Puppy.new }

  it 'is calm' do
    expect(subject.state).to eql :calm
  end

  it 'barks' do
    expect(subject.speak).to eql 'Bark!'
  end

  context 'when pet once' do
    before(:each) { subject.pet }

    it 'wags its tail' do
      expect(subject.state).to eql :wagging
    end

    context 'when belly rubbed' do
      before(:each) { subject.rub_belly }

      it 'calms down' do
        expect(subject.state).to eql :calm
      end
    end

    context 'and pet again' do
      before(:each) { subject.pet }

      it 'gets very excited' do
        expect(subject.state).to eql :excited
      end

      context 'when belly rubbed' do
        before(:each) { subject.rub_belly }

        it 'calms down' do
          expect(subject.state).to eql :calm
        end
      end
    end
  end

  context 'when sprayed once' do
    before(:each) { subject.spray }

    it 'growls' do
      expect(subject.state).to eql :growling
      expect(subject.speak).to eql 'Grrrr.'
    end

    context 'when belly rubbed' do
      before(:each) { subject.rub_belly }

      it 'calms down' do
        expect(subject.state).to eql :calm
      end
    end

    context 'and sprayed again' do
      before(:each) { subject.spray }

      it 'gets angry' do
        expect(subject.state).to eql :angry
        expect(subject.speak).to eql 'BARK BARK BARK!'
      end

      context 'when belly rubbed' do
        before(:each) { subject.rub_belly }

        it 'calms down' do
          expect(subject.state).to eql :calm
        end
      end
    end
  end
end
