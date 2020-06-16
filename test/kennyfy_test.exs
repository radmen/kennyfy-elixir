defmodule KennyfyTest do
  use ExUnit.Case
  doctest Kennyfy

  @lorem_ipsum "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas eget leo sit amet mauris dapibus congue. In semper maximus suscipit."

  @kenny_ipsum "Pmfppfpffmppppm mffpfmfmmfmfppm mpmppfpmfppfpff fmmmfffmp mmmppmmppfmp, mmfppfpppfmmmppmmffmpmppfmpfmfpff mmmmpmmffpfmmfffmmmmfmffpppmfm mpppmfmfffmp. Ppmmmmmppmmfmpppppmmmfmm mppmfmmppfmp pmfmppppf fmmmfffmp mmmppmmppfmp ppmmmmfmfpffmfffmm mpmmmmpfmmffmmpfmffmm mmfppfpppmfmfmfmpp. Mffppp fmmmppppmpfmmpppff ppmmmmfpfmffppmfmffmm fmmfmffmmmmfmffpfmmfffmp."

  test "encoding string to kenny speak" do
    assert Kennyfy.encode(@lorem_ipsum) == @kenny_ipsum
  end

  test "skip encoding of non-alpha characters" do
    assert Kennyfy.encode("1234!@#$") == "1234!@#$"
  end

  test "decoding kenny speak" do
    assert Kennyfy.decode(@kenny_ipsum) == @lorem_ipsum
  end

  test "decoding non-alpha characters" do
    str = "Foo bar 1234!@#$"
    encoded = Kennyfy.encode(str)

    assert Kennyfy.decode(encoded) == str
  end
end
