class Catty < Formula
  desc "Personal assistant agent harness for Discord"
  homepage "https://github.com/buape/catty"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/buape/catty/releases/download/v0.6.3/catty-0.6.3-darwin-arm64.tar.gz"
      sha256 "16c0936b4116ba987b72f72d6da0fc7b4d3d2145414406eac6f63c1aaa87a9ae"
    end

    on_intel do
      url "https://github.com/buape/catty/releases/download/v0.6.3/catty-0.6.3-darwin-amd64.tar.gz"
      sha256 "b8e3e40db6b9e2eda93b351f5839f00173107bd0cd6df425d629614f8fe53632"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/buape/catty/releases/download/v0.6.3/catty-0.6.3-linux-amd64.tar.gz"
      sha256 "399c6fa7c54f23d95ae305fa955875c57a0b9bd9615c26e7fe549882c815b253"
    end

    on_arm do
      disable! date: "2026-11-17", because: "catty does not provide Linux ARM builds"
    end
  end

  def install
    bin.install "catty"
  end

  test do
    assert_path_exists bin/"catty"
  end
end
