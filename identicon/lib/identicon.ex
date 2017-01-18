defmodule Identicon do

  def main(input) do
    input
    |> hash_input # directly |> into pick_color Because `hash_input` returns `struct` type
    |> pick_color
  end

  def pick_color(%Identicon.Image{hex: [r, g, b | _tail]} = image) do
    %Identicon.Image{image | color: {r, g, b}}
  end

  

  def hash_input(input) do
    seed = :crypto.hash(:md5, input)
    |> :binary.bin_to_list

    %Identicon.Image{hex: seed}
  end
end
