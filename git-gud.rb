class GitGud < Formula
  desc "An alternative git help command: git gud"
  homepage "https://github.com/superlonci/git-gud"
  url "https://github.com/SuperLonci/git-gud/releases/download/v.0/git-gud-macos-arm64"
  sha256 "fee86f301d5541eb604462f1514d1b1c3f528df8521720cf2144f5697a780beb"
  version "1.0.0"

  def install
    bin.install "git-gud-macos-arm64" => "git-gud"
  end

  test do
    system "#{bin}/git-gud", "--help"
  end
end
