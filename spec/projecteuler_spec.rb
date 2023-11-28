require 'projecteuler'

RSpec.describe ProjectEuler, "#multiples_of_3_and_5" do
  context "with multiples of 3 or 5" do
    it "returns the target values (size 4; contents: 3, 5, 6, 9)" do
      project_euler = ProjectEuler.new

      # Generate the array contents
      project_euler.get_multiples_of_3_and_5()

      # Check the size
      expect(project_euler.multiples_of_3_and_5.size).to equal 4

      # Check the contents
      expect(project_euler.multiples_of_3_and_5[0]).to equal 3
      expect(project_euler.multiples_of_3_and_5[1]).to equal 5
      expect(project_euler.multiples_of_3_and_5[2]).to equal 6
      expect(project_euler.multiples_of_3_and_5[3]).to equal 9

    end

  end
end



RSpec.describe ProjectEuler, "#even_fibonacci_numbers" do
  context "with even fibonacci numbers" do
    it "returns the even fibonacci numbers value (1089154)" do
      project_euler = ProjectEuler.new

      # Generate the array contents
      project_euler.get_even_fibonacci_numbers()

      # Check the size
      expect(project_euler.even_fibonacci_numbers.size).to equal 1

      # Check the contents
      expect(project_euler.even_fibonacci_numbers[0]).to equal 1089154

    end

  end
end


RSpec.describe ProjectEuler, "#largest_prime_factors" do
  context "with largest prime factors" do
    it "returns the largest value (...)" do
      project_euler = ProjectEuler.new

      # Generate the array contents
      project_euler.get_largest_prime_factors()

      # Check the size
      expect(project_euler.largest_prime_factors.size).to equal 1

      # Check the contents
      # Possible divisors: [[71, 1], [839, 1], [1471, 1], [6857, 1]]
      expect(project_euler.largest_prime_factors[0]).to equal 6857

    end

  end
end


RSpec.describe ProjectEuler, "#largest_prime_factors" do
  context "with largest prime factors" do
    it "returns the largest value (6857)" do
      project_euler = ProjectEuler.new

      # Generate the array contents
      project_euler.get_largest_prime_factors()

      # Check the size
      expect(project_euler.largest_prime_factors.size).to equal 1

      # Check the contents
      expect(project_euler.largest_prime_factors[0]).to equal 6857

    end

  end
end





RSpec.describe ProjectEuler, "#largest_palindrome_product_3_digits" do
  context "with largest palindrome product 3 digits" do
    it "returns the largest value (906609)" do
      project_euler = ProjectEuler.new

      # Generate the array contents
      project_euler.get_largest_palindrome_product_3_digits()

      # Check the size
      expect(project_euler.largest_palindrome_product_3_digits.size).to equal 1

      # Check the contents
      expect(project_euler.largest_palindrome_product_3_digits[0]).to equal 906609

    end

  end
end




RSpec.describe ProjectEuler, "#smallest_multiple" do
  context "with smallest multiple" do
    it "returns the smallest multiple value (232792560)" do
      project_euler = ProjectEuler.new

      # Generate the array contents
      project_euler.get_smallest_multiple()

      # Check the size
      expect(project_euler.smallest_multiple.size).to equal 1

      # Check the contents
      expect(project_euler.smallest_multiple[0]).to equal 232792560

    end

  end
end



RSpec.describe ProjectEuler, "#sum_square_difference" do
  context "with sum square difference" do
    it "returns the sum square difference value (2640)" do
      project_euler = ProjectEuler.new

      # Generate the array contents
      project_euler.get_sum_square_difference()

      # Check the size
      expect(project_euler.sum_square_difference.size).to equal 1

      # Check the contents
      expect(project_euler.sum_square_difference[0]).to equal 2640

    end

  end
end




RSpec.describe ProjectEuler, "#ten_thousand_first_prime" do
  context "with ten thousand first prime" do
    it "returns the last prime value (104743)" do
      project_euler = ProjectEuler.new

      # Generate the array contents
      project_euler.get_ten_thousand_first_prime()

      # Check the size
      expect(project_euler.ten_thousand_first_prime.size).to equal 1

      # Check the contents
      expect(project_euler.ten_thousand_first_prime[0]).to equal 104743

    end

  end
end




RSpec.describe ProjectEuler, "#largest_element_adjacent_product" do
  context "with largest element adjacent product" do
    it "returns the largest product value (162)" do
      project_euler = ProjectEuler.new

      # Generate the array contents
      project_euler.get_largest_element_adjacent_product()

      # Check the size
      expect(project_euler.largest_element_adjacent_product.size).to equal 1

      # Check the contents
      expect(project_euler.largest_element_adjacent_product[0]).to equal 162

    end

  end
end




RSpec.describe ProjectEuler, "#special_pythagorean_triplet" do
  context "with special pythagorean triplet" do
    it "returns special pythagorean triplet value (200, 375, 425)" do
      project_euler = ProjectEuler.new

      # Generate the array contents
      project_euler.get_special_pythagorean_triplet()

      # Check the size
      expect(project_euler.special_pythagorean_triplet.size).to equal 3

      # Check the contents
      #expect(project_euler.special_pythagorean_triplet[0]).to equal "The values are: a=200 b=375 c=425"
      expect(project_euler.special_pythagorean_triplet[0]).to equal 200
      expect(project_euler.special_pythagorean_triplet[1]).to equal 375
      expect(project_euler.special_pythagorean_triplet[2]).to equal 425

    end

  end
end





RSpec.describe ProjectEuler, "#summation_of_primes" do
  context "with summation of primes" do
    it "returns summation of primes value (142913828922)" do
      project_euler = ProjectEuler.new

      # Generate the array contents
      project_euler.get_summation_of_primes()

      # Check the size
      expect(project_euler.summation_of_primes.size).to equal 1

      # Check the contents
      expect(project_euler.summation_of_primes[0]).to equal 142913828922

    end

  end
end