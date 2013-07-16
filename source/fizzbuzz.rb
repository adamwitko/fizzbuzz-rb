class FizzBuzz

    @@fizzOutput = "Fizz"
    @@buzzOutput = "Buzz"
    @@fizzBuzzOutput = @@fizzOutput + @@buzzOutput

    def execute(number)
        if isFizzBuzz number
            return @@fizzBuzzOutput
        elsif isFizz number
            return @@fizzOutput
        elsif isBuzz number
            return @@buzzOutput
        else
            return number
        end
    end

    private
    def isFizz(number)
        number % 3 == 0
    end

    def isBuzz(number)
        number % 5 ==0
    end

    def isFizzBuzz(number)
        isFizz(number) & isBuzz(number)
    end
end