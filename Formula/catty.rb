class Catty < Formula
  desc "Personal assistant agent harness for Discord"
  homepage "https://github.com/buape/catty"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/buape/catty/releases/download/v0.6.1/catty-0.6.1-darwin-arm64.tar.gz"
      sha256 "fc5a76c2874d0b906709c9f22e43fd770d4efc8935e7f70967dbcb8f7a899695"
    end

    on_intel do
      url "https://github.com/buape/catty/releases/download/v0.6.1/catty-0.6.1-darwin-amd64.tar.gz"
      sha256 "7e5f55b5ee8286cbdc5ecff5f2c8e24894d1b694723ef3eaf36576686e76adee"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/buape/catty/releases/download/v0.6.1/catty-0.6.1-linux-amd64.tar.gz"
      sha256 "f1387ca42597a4499d93e06af476d9720e6b0913c3a72bae5fdd32b14e897b36"
    end

    on_arm do
      disable! date: "2026-10-24", because: "catty does not provide Linux ARM builds"
    end
  end

  def install
    bin.install "catty"
  end

  test do
    assert_path_exists bin/"catty"
  end
end
