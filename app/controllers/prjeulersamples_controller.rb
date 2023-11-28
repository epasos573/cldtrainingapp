class PrjeulersamplesController < ApplicationController
  def index
    @prjeulersamples = PrjEulerSample.all
  end

  def multiplesof3and5
    numbers = [1,2,3,4,5,6,7,8,9]
    result = Array.new

    numbers.each do |number|
      if number % 3 == 0 or number % 5 == 0
        result.push(number)
      end
    end
    @resultdata = result
  end
end
