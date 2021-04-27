require 'airport'

describe Airport do
	describe '#accept_land' do
		it 'should instruct a plane to land' do
			expect(subject.accept_land("plane")).to eq "plane has landed"
		end
	end
end