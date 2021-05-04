require 'plane'

describe Plane do
	describe '#initialize' do
		it 'should ensure every plane has a name' do
			boeing_747 = Plane.new('Boeing 747')
			expect(boeing_747.name).to eq 'Boeing 747'
		end
	end
end