# Kennyfy

Simple text converter from/to [Kennyspeak](https://www.namesuppressed.com/kenny/).

Made to learn Elixir and for pure fun.

## Installation

```elixir
def deps do
  [
    {:kennyfy, git: "https://github.com/radmen/kennyfy-elixir.git"}
  ]
end
```

## Usage

```elixir
Kennyfy.encode("Lorem ipsum")
Kennyfy.decode("Pmfppfpffmppppm mffpfmfmmfmfppm")
```
