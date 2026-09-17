class Catty < Formula
  desc "Personal assistant agent harness for Discord"
  homepage "https://github.com/buape/catty"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/buape/catty/releases/download/v0.5.0/catty-0.5.0-darwin-arm64.tar.gz"
      sha256 "017e341c92c9ca063417a56bffa703eebd7f011447cb0e28e4774b88dd927423"
    end

    on_intel do
      url "https://github.com/buape/catty/releases/download/v0.5.0/catty-0.5.0-darwin-amd64.tar.gz"
      sha256 "f456fb779cbb425a94ba281dfcfb29cf6931a6e02bc3a545007c62a53c0b2115"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/buape/catty/releases/download/v0.5.0/catty-0.5.0-linux-amd64.tar.gz"
      sha256 "c7cf017eab5632d59cd2cb561c81406c74e473b74febb10dfd212ed3a861b981"
    end

    on_arm do
      disable! date: "2026-09-17", because: "catty does not provide Linux ARM builds"
    end
  end

  def install
    bin.install "catty"
  end

  test do
    assert_path_exists bin/"catty"
  end
end
