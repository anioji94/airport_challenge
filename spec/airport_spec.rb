require 'airport'

describe Airport do
  let(:plane) {double :plane, name: 'test'}

	describe '#accept_land' do
		it 'should instruct a plane to land' do
			expect(subject.accept_land(plane)).to eq "test has landed"
		end

		context 'when airport capacity is full' do
			a = Airport.new(10)
			it 'should refuse a land request' do
				expect(a.accept_land(plane)).to eq "request denied. airport full"
			end
		end
	end

	describe '#take_off' do
		it 'should instruct a plane to take off' do
			expect(subject.take_off(plane)).to eq "test has taken off"
		end
	end
end