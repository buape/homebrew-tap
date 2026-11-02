class Buapedb < Formula
  desc "Database access for Buape"
  homepage "https://github.com/buape/buapedb"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/buape/buapedb/releases/download/v0.1.0/buapedb-0.1.0-darwin-arm64.tar.gz"
      sha256 "ae2b013b75d0637f4c149a9349676146d0d728271653a2d2393abefd54e97f73"
    end

    on_intel do
      url "https://github.com/buape/buapedb/releases/download/v0.1.0/buapedb-0.1.0-darwin-amd64.tar.gz"
      sha256 "c6a521bd4ab292e28f5df04bb3dd67b6aa40db84cef16a1d65c1a1d0e1ef46bc"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/buape/buapedb/releases/download/v0.1.0/buapedb-0.1.0-linux-amd64.tar.gz"
      sha256 "73fb54fc304aed78cdc2d0b46e31af684bd67db452441ef90e5ad23e8ca2a53f"
    end

    on_arm do
      disable! date: "2026-11-02", because: "buapedb does not provide Linux ARM builds"
    end
  end

  def install
    bin.install "buapedb"
  end

  test do
    assert_path_exists bin/"buapedb"
  end
end
