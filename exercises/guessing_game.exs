defmodule GuessingGame do
  @answer Enum.random(1..10)
  def guess do
    player_guess = IO.gets("Guess a number between 1 and 10.")
    if String.trim(player_guess) == Integer.to_string(@answer) do
      IO.puts("Correct!")
    else
      guess()
    end
  end
end

GuessingGame.guess()
