defmodule Kennyfy.Dict do
  @dict %{
    "a" => "mmm",
    "b" => "mmp",
    "c" => "mmf",
    "d" => "mpm",
    "e" => "mpp",
    "f" => "mpf",
    "g" => "mfm",
    "h" => "mfp",
    "i" => "mff",
    "j" => "pmm",
    "k" => "pmp",
    "l" => "pmf",
    "m" => "ppm",
    "n" => "ppp",
    "o" => "ppf",
    "p" => "pfm",
    "q" => "pfp",
    "r" => "pff",
    "s" => "fmm",
    "t" => "fmp",
    "u" => "fmf",
    "v" => "fpm",
    "w" => "fpp",
    "x" => "fpf",
    "y" => "ffm",
    "z" => "ffp",
    "A" => "Mmm",
    "B" => "Mmp",
    "C" => "Mmf",
    "D" => "Mpm",
    "E" => "Mpp",
    "F" => "Mpf",
    "G" => "Mfm",
    "H" => "Mfp",
    "I" => "Mff",
    "J" => "Pmm",
    "K" => "Pmp",
    "L" => "Pmf",
    "M" => "Ppm",
    "N" => "Ppp",
    "O" => "Ppf",
    "P" => "Pfm",
    "Q" => "Pfp",
    "R" => "Pff",
    "S" => "Fmm",
    "T" => "Fmp",
    "U" => "Fmf",
    "V" => "Fpm",
    "W" => "Fpp",
    "X" => "Fpf",
    "Y" => "Ffm",
    "Z" => "Ffp"
  }

  @spec get(String.t()) :: String.t()
  def get(letter), do: Map.get(@dict, letter, letter)

  @spec find_letter(String.t()) :: String.t() | nil
  def find_letter(kenny_char) do
    @dict
    |> Enum.find(fn {_, k} -> k == kenny_char end)
    |> case do
      {l, _} -> l
      _ -> nil
    end
  end
end
