class Catty < Formula
  desc "Personal assistant agent harness for Discord"
  homepage "https://github.com/buape/catty"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/buape/catty/releases/download/v0.6.2/catty-0.6.2-darwin-arm64.tar.gz"
      sha256 "a7877bf7d9b2d3ef86311e43be131817fe985a8f94b496aced61a8b993a462f0"
    end

    on_intel do
      url "https://github.com/buape/catty/releases/download/v0.6.2/catty-0.6.2-darwin-amd64.tar.gz"
      sha256 "42b2788264209dd405d5065cbd901372cab456c608b338f3126cb41e9acbba68"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/buape/catty/releases/download/v0.6.2/catty-0.6.2-linux-amd64.tar.gz"
      sha256 "ccedb28f143550f01a999496e538382c5ab4620dc5af8789f020b667a7611c3e"
    end

    on_arm do
      disable! date: "2026-11-06", because: "catty does not provide Linux ARM builds"
    end
  end

  def install
    bin.install "catty"
  end

  test do
    assert_path_exists bin/"catty"
  end
end
