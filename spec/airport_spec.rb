require 'airport'

describe Airport do
  let(:plane) {double :plane, name: 'test'}
	let(:empty_airport) {Airport.new(0)}
	let(:full_airport) {Airport.new(10)}
	let(:weather) {double :weather, report: 'stormy'}
	let(:stormy_airport) {Airport.new(5, 10, weather)}

	describe '#initialize' do
		it 'should allow airports to be made with different max capacities' do
			large_airport = Airport.new(0, 100)
			expect(large_airport.max_capacity).to be 100
		end

		it 'should be able to generate a weather report' do
			expect(stormy_airport.weather.report).to eq 'stormy'
		end
	end

	describe '#accept_land' do
		it 'should instruct a plane to land' do
			expect(subject.accept_land(plane)).to eq "test has landed"
		end

		context 'when airport capacity is full' do
			it 'should refuse a land request' do
				expect{full_airport.accept_land(plane)}.to raise_error "request denied. airport full" 
			end
		end

		context 'when weather is stormy' do
			# prevent landing, weather is stormy
		end
	end

	describe '#take_off' do
		it 'should instruct a plane to take off' do
			expect(subject.take_off(plane)).to eq "test has taken off"
		end

		context 'when airport capacity is empty' do
			it 'should refuse a take off request' do
				expect{empty_airport.take_off(plane)}.to raise_error "request denied. airport empty"
			end
		end

		context 'when weather is stormy' do
			it 'should refuse a take off request' do
				expect{stormy_airport.take_off(plane)}.to raise_error "request denied. stormy weather"
			end
		end
	end
end