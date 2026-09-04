class Catty < Formula
  desc "Personal assistant agent harness for Discord"
  homepage "https://github.com/buape/catty"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/buape/catty/releases/download/v0.1.1/catty-0.1.1-darwin-arm64.tar.gz"
      sha256 "5a1fbc5f6d4d163debced214536e4575df3580262ad94dc338c9dfae33ec9073"
    end

    on_intel do
      url "https://github.com/buape/catty/releases/download/v0.1.1/catty-0.1.1-darwin-amd64.tar.gz"
      sha256 "d6a49b1809db4d846efa4d71c1caea34b550999fe85c6952bb4ce02373c3b2e6"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/buape/catty/releases/download/v0.1.1/catty-0.1.1-linux-amd64.tar.gz"
      sha256 "2e0dd46926fed7c4cadf4687dc35ecc2e75c8858458b6569a32a34a7976bf9e7"
    end

    on_arm do
      disable! date: "2026-07-06", because: "catty does not provide Linux ARM builds"
    end
  end

  def install
    bin.install "catty"
  end

  test do
    assert_path_exists bin/"catty"
  end
end
