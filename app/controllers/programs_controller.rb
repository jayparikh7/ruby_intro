class ProgramsController < ApplicationController
  def home
    # Your code goes below.

    rock = 1
    throw_down = rand(3)
    selection = "Throw Down"
    outcome = "Not Yet"

    if throw_down == 0
      selection = "scissor"
    elsif throw_down == 1
      selection = "rock"
    else
      selection = "paper"
    end

    if throw_down < rock
      outcome = "Fatality - You Lose"
    elsif throw_down == rock
      outcome = "Lame - Tie"
    else
      outcome = "Yay - Win!"
    end

    @your_output = selection + " " + outcome

    render("programs/home.html.erb")
  end

  def first_program
    # Your code goes below.

    @your_output = "Replace this string with your output"

    render("programs/first_program.html.erb")
  end

  def second_program
    # Your code goes below.

    our_numbers = [4, 5, 10]
    squared_numbers = []

    our_numbers.each do |num|
      square = num * num
      squared_numbers.push(square)

    end

    @your_output = squared_numbers.sum

    render("programs/second_program.html.erb")
  end

  def third_program
    numbers = (1..999).to_a
    divide_by_three = []
    divide_by_five = []

    numbers.each do |counter|
      if counter % 3 == 0
        divide_by_three.push(counter)
      end
      if counter % 5 == 0
        if counter % 3 != 0
          divide_by_five.push(counter)
        end
      end
    end

    @your_output = divide_by_three.sum + divide_by_five.sum

    render("programs/third_program.html.erb")
  end
end
