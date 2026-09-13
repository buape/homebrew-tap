class Catty < Formula
  desc "Personal assistant agent harness for Discord"
  homepage "https://github.com/buape/catty"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/buape/catty/releases/download/v0.4.2/catty-0.4.2-darwin-arm64.tar.gz"
      sha256 "56fc484c0ddfbbf50767a4b9eadafcaaa10a485dd83627945b7aa6df09bc426a"
    end

    on_intel do
      url "https://github.com/buape/catty/releases/download/v0.4.2/catty-0.4.2-darwin-amd64.tar.gz"
      sha256 "19800a63d2ee42f602038e108561370c61860e5ba0d8a9e462ca72b81a166562"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/buape/catty/releases/download/v0.4.2/catty-0.4.2-linux-amd64.tar.gz"
      sha256 "f5cc39223f75b15da401a01be05dda10df110bfe7bd6812ffdfb162550fa8113"
    end

    on_arm do
      disable! date: "2026-09-13", because: "catty does not provide Linux ARM builds"
    end
  end

  def install
    bin.install "catty"
  end

  test do
    assert_path_exists bin/"catty"
  end
end
