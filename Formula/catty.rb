class Catty < Formula
  desc "Personal assistant agent harness for Discord"
  homepage "https://github.com/buape/catty"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/buape/catty/releases/download/v0.4.1/catty-0.4.1-darwin-arm64.tar.gz"
      sha256 "8fb203ac0b3586fd1ad22b393a178ec10c4805c75fa24f9fa76c77d4f5e5e530"
    end

    on_intel do
      url "https://github.com/buape/catty/releases/download/v0.4.1/catty-0.4.1-darwin-amd64.tar.gz"
      sha256 "92bdbae14eee73b5a04aeeeb575c201ede0ac6af24b34172bb247f6db54c381f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/buape/catty/releases/download/v0.4.1/catty-0.4.1-linux-amd64.tar.gz"
      sha256 "9d6d92b75d9c1681f523868bd5a6cad6286baf23f78df6ff6d384e4a1e9596ab"
    end

    on_arm do
      disable! date: "2026-09-04", because: "catty does not provide Linux ARM builds"
    end
  end

  def install
    bin.install "catty"
  end

  test do
    assert_path_exists bin/"catty"
  end
end
