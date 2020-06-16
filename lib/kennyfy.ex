defmodule Kennyfy do
  @moduledoc """
  `Kennyfy` is a simple text converter. It translates string from/to kenny speak.
  """

  @doc """
  Convert given string to kenny speak

  ### Examples

    iex> Kennyfy.encode("Lorem ipsum")
    "Pmfppfpffmppppm mffpfmfmmfmfppm"
  """
  @spec encode(String.t()) :: String.t()
  def encode(str) do
    str
    |> String.graphemes()
    |> Enum.map(&Kennyfy.Dict.get/1)
    |> Enum.join()
  end

  @doc """
  Decode given kenny speak string

  ### Examples

    iex> Kennyfy.decode("Pmfppfpffmppppm mffpfmfmmfmfppm")
    "Lorem ipsum"
  """
  @spec decode(String.t()) :: String.t()
  def decode(str) do
    decode(str, "")
  end

  @spec decode(String.t(), String.t()) :: String.t()
  defp decode("", acc), do: acc

  defp decode(str, acc) do
    {h, t} = decode_head(str)
    decode(t, acc <> h)
  end

  @spec decode_head(String.t()) :: {String.t(), String.t()}
  defp decode_head(str) do
    {h, t} = String.split_at(str, 3)

    Kennyfy.Dict.find_letter(h)
    |> case do
      nil -> String.split_at(str, 1)
      l -> {l, t}
    end
  end
end
