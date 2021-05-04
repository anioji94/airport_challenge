require 'airport'

describe Airport do
  let(:plane) {double :plane, name: 'test'}

	describe '#accept_land' do
		it 'should instruct a plane to land' do
			expect(subject.accept_land(plane)).to eq "test has landed"
		end
	end

	describe '#take_off' do
		it 'should instruct a plane to take off' do
			expect(subject.take_off(plane)).to eq "test has taken off"
		end
	end
end