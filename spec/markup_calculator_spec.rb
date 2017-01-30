require 'spec_helper'

describe MarkupCalculator do
	it 'when calculating markup for the first set of test case($1,299.99, 3 people, food )' do
		markup = MarkupCalculator.calculate(1299.99, 3, "food")
		expect(markup).to eq 1591.58
	end
	it 'when calculating markup for the second set of test case($5,432.00, 1 person, drugs )' do
		markup = MarkupCalculator.calculate(5432.00, 1, "drugs")
		expect(markup).to eq 6199.81
	end
	it 'when calculating markup for the third set of test case($12,456.95, 4 people, books )' do
		markup = MarkupCalculator.calculate(12456.95, 4, "books")
		expect(markup).to eq 13707.63
	end
end