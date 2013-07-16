require '../source/fizzbuzz.rb'

describe FizzBuzz do

    before :all do
        @fizzbuzz = FizzBuzz.new
    end

    [1,2,4,7].each do |number|
        it "returns input number when fizzbuzzing #{number}" do
            @fizzbuzz.execute(number).should eq(number)
        end
    end

    [3,6,9,99].each do |number|
        it "returns 'Fizz' when fizzbuzzing #{number}" do
            @fizzbuzz.execute(number).should eq("Fizz")
        end
    end

    [5,10,20,25].each do |number|
        it "returns 'Buzz' when fizzbuzzing #{number}" do
            @fizzbuzz.execute(number).should eq("Buzz")
        end
    end

    [15,30,45,60].each do |number|
        it "returns 'FizzBuzz' when fizzbuzzing #{number}" do
            @fizzbuzz.execute(number).should eq("FizzBuzz")
        end
    end
end