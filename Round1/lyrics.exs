defmodule Sample.Lyrics do
  defp get_sentnce(2) do
    IO.puts("Two bottles of milk on the wall, two bottles of milk!\n Take one down, pass it around.\n One bottle of milk on the wall.")
  end
  defp get_sentence(1) do
    IO.puts("One bottle of milk on the wall, one bottle of milk!\n Take one down, pass it around.\n No more bottles of milk on the wall.")
  end
  defp get_sentence(number) do
    IO.puts("#{number} bottles of milk on the wall, #{number} bottles of milk!\n Take one down, pass it around\n #{number-1} bottle of milk on the wall.")
  end

  defp get_next_bottle(number) do # trash private function rn
  end

  def lyrics(), do: lyrics(100..1)
  def lyrics(first..last) when first <= last,
    do: get_sentence(first)

  def lyrics(first..last),
  do: get_sentence(first) <> lyrics(first - 1..last)


end
