require './matchers'
RSpec.describe RSpecMatchers do

    context 'when testing an object identity matcher' do # task 2
        it 'is passing with numbers' do
            oim = RSpecMatchers.new(9, 9)
            actual = oim.a
            expected = oim.e
            expect(actual).to be(expected)
        end
        it 'is passing with symbols' do
            oim = RSpecMatchers.new(:ruby, :ruby)
            actual = oim.a
            expected = oim.e
            expect(actual).to be(expected)
        end
        it 'is a failure with strings' do
            oim = RSpecMatchers.new('ruby', 'ruby')
            actual = oim.a
            expected = oim.e
            expect(actual).to be(expected)
        end
    end

    context 'when testing an object equivalence matcher' do # task 3
        it 'is passing with Boolean values' do
            oem = RSpecMatchers.new(true, true)
            actual = oem.a
            expected = oem.e
            expect(actual).to eq(expected)
        end
        it 'is passing with symbols' do
            oem = RSpecMatchers.new(:ruby, :ruby)
            actual = oem.a
            expected = oem.e
            expect(actual).to eq(expected)
        end
        it 'is is passing with strings' do
            oem = RSpecMatchers.new('ruby', 'ruby')
            actual = oem.a
            expected = oem.e
            expect(actual).to eq(expected)
        end
    end

    context 'when testing an object identity+equivalence matcher' do # task 4
        it 'is passing with Boolean values' do
            oiem = RSpecMatchers.new(true, true)
            actual = oiem.a
            expected = oiem.e
            expect(actual).to eql(expected)
        end        
        it 'is passing with strings' do
            oiem = RSpecMatchers.new('ruby', 'ruby')
            actual = oiem.a
            expected = oiem.e
            expect(actual).to eql(expected)
        end
        it 'is passing with symbols' do
            oiem = RSpecMatchers.new(:ruby, :ruby)
            actual = oiem.a
            expected = oiem.e
            expect(actual).to eql(expected)
        end
        it 'is a failure with Integer and Float numbers' do
            oiem = RSpecMatchers.new(9, 9.0)
            actual = 9
            expected = 9.0
            expect(actual).to eql(expected)
        end
    end

end