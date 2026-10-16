class Catty < Formula
  desc "Personal assistant agent harness for Discord"
  homepage "https://github.com/buape/catty"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/buape/catty/releases/download/v0.6.0/catty-0.6.0-darwin-arm64.tar.gz"
      sha256 "f8448d2b3628872ae6ad550fb04313b366b0ec0bd337d76cc8c7d386cf05894e"
    end

    on_intel do
      url "https://github.com/buape/catty/releases/download/v0.6.0/catty-0.6.0-darwin-amd64.tar.gz"
      sha256 "59511901077d6b18a99bdf5456450a81d477a9862c0ca7a92946e9da11d31738"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/buape/catty/releases/download/v0.6.0/catty-0.6.0-linux-amd64.tar.gz"
      sha256 "b2384f9ff4d7b522561cd34732b34d0c158ec509087e4406ebb2a4f71d42e88b"
    end

    on_arm do
      disable! date: "2026-10-16", because: "catty does not provide Linux ARM builds"
    end
  end

  def install
    bin.install "catty"
  end

  test do
    assert_path_exists bin/"catty"
  end
end
