require "prime"


class ProjectEuler
  attr_reader :multiples_of_3_and_5
  attr_reader :even_fibonacci_numbers
  attr_reader :largest_prime_factors
  attr_reader :largest_palindrome_product_3_digits
  attr_reader :smallest_multiple
  attr_reader :sum_square_difference
  attr_reader :ten_thousand_first_prime
  attr_reader :largest_element_adjacent_product
  attr_reader :special_pythagorean_triplet
  attr_reader :summation_of_primes

  def get_multiples_of_3_and_5()

    numbers = [1,2,3,4,5,6,7,8,9]
    result = Array.new

    numbers.each do |number|
      if number % 3 == 0 or number % 5 == 0
        result.push(number)
      end
    end
    @multiples_of_3_and_5 = result
  end

  def get_even_fibonacci_numbers()

    result = Array.new

    even_fib_numbers_only = Enumerator.new do |y|
      a,b =0,1
      loop do
        y << a if a.even? and a > 0 #and a < 4000000
        a, b = b, a + b
      end
    end

    even_fib_numbers_only.first(10)
    #=> [2, 8, 34, 144, 610, 2584, 10946, 46368, 196418]
    even_fib_numbers_only.take(20)
    #=> [2, 8, 34, 144, 610, 2584, 10946, 46368, 196418, 832040, 3524578, 14930352, 63245986, 267914296, 1134903170, 4807526976, 20365011074, 86267571272, 365435296162]

    result.push(even_fib_numbers_only.first(10).reduce(:+))
    #=> 257114
    @even_fibonacci_numbers = result

  end


  def get_largest_prime_factors()

    result = Array.new

    max = 600851475143
    lower = 2

    while lower < max
      while max % lower == 0 && max != lower
        max = max / lower
      end
      lower = lower+1
    end
    result.push(max)

    @largest_prime_factors = result

  end


  def get_largest_palindrome_product_3_digits()

    result = Array.new

    #puts '---------'
    #puts 'Show all possible outcomes'
    #puts '---------'
    #puts (100..999).to_a.combination(2).map{|a,b| a*b}.select{|x| x.to_s==x.to_s.reverse}
    #puts '---------'

    result.push((100..999).to_a.combination(2).map{|a,b| a*b}.select{|x| x.to_s==x.to_s.reverse}.max)

    @largest_palindrome_product_3_digits = result
  end

  def get_smallest_multiple()

    result = Array.new

    #puts '---------'
    #puts 'Show all possible outcomes'

    # Solution 1:
    option1 = "Option 1: (1..20).reduce(:lcm) => %d" % [(1..20).reduce(:lcm)]
    puts option1

    # Solution 2:
    option2 = "Option 2: (1..20).inject(:lcm) => %d" % [(1..20).inject(:lcm)]
    puts option2


    result.push((1..20).reduce(:lcm))

    @smallest_multiple = result

  end

  def get_sum_square_difference()
    result = Array.new

    min_num = 1
    max_num = 10

    sum_of_squares =  (min_num..max_num).inject(:+)**2
    puts "sum_of_squares: %d" % [sum_of_squares]

    square_sum = (min_num..max_num).map {|num| num ** 2}.inject(:+)
    puts "square_sum: %d" % [square_sum]

    result.push(sum_of_squares - square_sum)

    @sum_square_difference = result
  end

  def get_ten_thousand_first_prime()

    result = Array.new

    num_value = 10001

    result.push((Prime.first num_value).last)

    @ten_thousand_first_prime = result
  end



  def get_largest_element_adjacent_product()

    result = Array.new

    length = 3
    string_value = "63915"

    integers = string_value.chars.map(&:to_i)
    map_result = 0

    integers.each_cons(length) do |candidate|
      candidate_result = candidate.inject(:*)
      map_result = candidate_result if candidate_result > map_result
    end

    puts "Series `63915` will result to: %d" % [map_result]
    # Expected result: 162
    result.push(map_result)

    @largest_element_adjacent_product = result

  end


  def get_special_pythagorean_triplet()
    result = Array.new


    target_sum = 1000

    a_limit = (target_sum / 3)

    is_found = 0

    (1..a_limit)
      .map do |a|

      if is_found == 0

        b = (target_sum**2 - 2 * target_sum * a) / (2 * target_sum - 2 * a)
        c = target_sum - (a + b)
        #[a, b, c]

        left_data = (a**2) + (b**2)
        right_data = (c*c)
        if (left_data == right_data)
          is_found = 1

          result = [a,b,c]

          result_string = "The values are: a=%d b=%d c=%d" % [a,b,c]

          puts result_string

          puts "-----------------------------------"
          puts "The value of a: %d" % [a]
          puts "The value of a^2: %d" % [a*a]
          puts "The value of b: %d" % [b]
          puts "The value of b^2: %d" % [b*b]
          puts "The sum of squares: %d" % [(a*a) + (b*b)]
          puts "The value of c: %d" % [c]
          puts "The value of c^2: %d" % [c*c]
          puts "The sum of 3 items: %d" % [a+b+c]
          puts "Expected: a + b + c = 1000: {200, 375, 425}"

        end
      end
    end

    @special_pythagorean_triplet = result
  end




  def get_summation_of_primes()

    result = Array.new

    range = 2000000

    start_time = Time.now
    answer = Prime.each(range).inject(:+)
    duration = Time.now - start_time

    puts "Sum of primes below #{range} is #{answer}. Took #{duration} s to calculate using my Ruby's Prime.each method."

    result.push(answer)

    @summation_of_primes = result
  end


end