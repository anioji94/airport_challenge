require 'airport'

describe Airport do
  let(:plane) {double :plane, name: 'test'}
	let(:empty_airport) {Airport.new(0)}
	let(:full_airport) {Airport.new(10)}

	describe '#accept_land' do
		it 'should instruct a plane to land' do
			expect(subject.accept_land(plane)).to eq "test has landed"
		end

		context 'when airport capacity is full' do
			it 'should refuse a land request' do
				expect(full_airport.accept_land(plane)).to eq "request denied. airport full"
			end
		end
	end

	describe '#take_off' do
		it 'should instruct a plane to take off' do
			expect(subject.take_off(plane)).to eq "test has taken off"
		end

		context 'when airport capacity is empty' do
			it 'should refuse a take off request' do
				expect(empty_airport.take_off(plane)).to eq "request denied. airport empty"
			end
		end
	end
end