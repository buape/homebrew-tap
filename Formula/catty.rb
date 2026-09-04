class Catty < Formula
  desc "Personal assistant agent harness for Discord"
  homepage "https://github.com/buape/catty"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/buape/catty/releases/download/v0.4.0/catty-0.4.0-darwin-arm64.tar.gz"
      sha256 "6a5b671ebde644af2b8297066a3c1459c8328ff01067cd14ff5691a9375c325a"
    end

    on_intel do
      url "https://github.com/buape/catty/releases/download/v0.4.0/catty-0.4.0-darwin-amd64.tar.gz"
      sha256 "5790fbe1caab71cfc3c7781fe2792f8ca1cfbfdb190d534fb4613312b4c57653"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/buape/catty/releases/download/v0.4.0/catty-0.4.0-linux-amd64.tar.gz"
      sha256 "3b2e4af560324df02609266fa0a711e0516d225f93753cd94324f8890f6c464d"
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
