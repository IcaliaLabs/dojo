require_relative '../lib/change_machine'

shared_examples_for 'non-dispensing change machine' do
  it 'does not dispense change' do
    expect(subject).to_not receive(:quarter)
    expect(subject).to_not receive(:dime)
    expect(subject).to_not receive(:nickel)
    expect(subject).to_not receive(:penny)
    subject.dispense_change
  end
end

describe ChangeMachine do
  subject { ChangeMachine.new }

  it 'dispenses one coin' do
    subject.cost 300
    subject.paid 325
    expect(subject).to receive(:quarter).once
    expect(subject).to_not receive(:dime)
    expect(subject).to_not receive(:nickel)
    expect(subject).to_not receive(:penny)
    subject.dispense_change
  end

  it 'dispenses several of the same coin' do
    subject.cost 300
    subject.paid 375
    expect(subject).to receive(:quarter).thrice
    expect(subject).to_not receive(:dime)
    expect(subject).to_not receive(:nickel)
    expect(subject).to_not receive(:penny)
    subject.dispense_change
  end

  it 'dispenses two different coins' do
    subject.cost 100
    subject.paid 126
    expect(subject).to receive(:quarter).once
    expect(subject).to receive(:penny).once
    expect(subject).to_not receive(:dime)
    expect(subject).to_not receive(:nickel)
    subject.dispense_change
  end

  it 'dispenses complex change' do
    subject.cost 100
    subject.paid 192
    expect(subject).to receive(:quarter).thrice
    expect(subject).to receive(:dime).once
    expect(subject).to receive(:nickel).once
    expect(subject).to receive(:penny).twice
    subject.dispense_change
  end

  it 'does not dispense more than $0.99' do
    subject.cost 300
    subject.paid 401
    expect(subject).to receive(:penny).once
    expect(subject).to_not receive(:quarter)
    expect(subject).to_not receive(:dime)
    expect(subject).to_not receive(:nickel)
    subject.dispense_change
  end

  context 'when the amount owed is an even dollar amount' do
    before(:each) do
      subject.cost 300
      subject.paid 800
    end
    it_behaves_like 'non-dispensing change machine'
  end

  context 'when the customer pays exact change' do
    before(:each) do
      subject.cost 314
      subject.paid 314
    end
    it_behaves_like 'non-dispensing change machine'
  end

  context 'when the customer has not finished paying' do
    before(:each) do
      subject.cost 612
      subject.paid 300
    end
    it_behaves_like 'non-dispensing change machine'
  end
end
