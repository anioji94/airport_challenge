require 'weather'

describe Weather do
	describe '#report' do	
		it 'should generate a weather report' do
			expect(subject.report).to be_a(String)
		end
	end
end